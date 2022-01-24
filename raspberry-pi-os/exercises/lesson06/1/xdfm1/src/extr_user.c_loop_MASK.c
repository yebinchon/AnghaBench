void FUNC0(char* str)
{
	char buf[2] = {""};
	while (1){
		for (int i = 0; i < 5; i++){
			buf[0] = str[i];
			FUNC0(buf);
			FUNC0(1000000);
		}
	}
}