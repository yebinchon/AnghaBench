__attribute__((used)) static inline void FUNC0(const volatile void *addr)
{
	int ret;

	asm volatile("lwz %0,0(%1); twi 0,%0,0; isync;\n"
		     : "=r" (ret) : "r" (addr) : "memory");
}