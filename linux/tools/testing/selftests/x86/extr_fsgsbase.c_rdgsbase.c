
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long rdgsbase(void)
{
 unsigned long gsbase;

 asm volatile("rdgsbase %0" : "=r" (gsbase) :: "memory");

 return gsbase;
}
