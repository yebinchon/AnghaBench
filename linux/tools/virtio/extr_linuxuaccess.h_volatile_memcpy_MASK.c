__attribute__((used)) static void FUNC0(volatile char *to, const volatile char *from, 
			    unsigned long n)
{
	while (n--)
		*(to++) = *(from++);
}