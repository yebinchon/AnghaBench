
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int __rdpkru(void)
{
 unsigned int eax, edx;
 unsigned int ecx = 0;
 unsigned int pkru;

 asm volatile(".byte 0x0f,0x01,0xee\n\t"
       : "=a" (eax), "=d" (edx)
       : "c" (ecx));
 pkru = eax;
 return pkru;
}
