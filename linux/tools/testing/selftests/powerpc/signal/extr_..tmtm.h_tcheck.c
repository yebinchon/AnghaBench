
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int tcheck(void)
{
 long cr;
 asm volatile ("tcheck 0" : "=r"(cr) : : "cr0");
 return (cr >> 28) & 4;
}
