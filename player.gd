extends CharacterBody2D

var tempo_prox_segundo = 1
var speed = 100
var delta_mutl = 1000

# Anotações sobre Cenas
# --> Uso de cenas
# --> A cena é uma tela, mas pode ser uma fase ou um objeto
# --> Assim voce pode chamar varios bichinhos identicos com o mesmo arquivo
# --> Filhos editaveis: permite alterar apenas aquele filho ali

func _ready():
	# Roda 1 vez quando o jogador spawna
	print("Jogador pronto")
	
func _process(delta: float):
	# Roda a cada frame 
	# O delta: Quantos segundos se passaram desde o ultimo "process"
	
	# Controle de 1 segundo - exemplo
	# Ideal para gravidade? parece q si
	tempo_prox_segundo -= delta
	if tempo_prox_segundo <= 0:
		print("Passou 1 segundo")
		tempo_prox_segundo = 1
		
	if Input.is_action_pressed("move_left"):
		velocity = Vector2(-delta * speed * delta_mutl,0) # Nossa tupla x, y
		move_and_slide()
		print("Anda esquerda")
	if Input.is_action_pressed("move_right"):
		velocity = Vector2(delta * speed * delta_mutl,0) # Nossa tupla x, y
		move_and_slide()
		print("Anda direita")
		
func _input(event: InputEvent):
	# Chamado sempre que recebe uma NOVA entrada
	# Desvantagem: Se apertar e segurar isso não funciona
	print("Entrada")
	
