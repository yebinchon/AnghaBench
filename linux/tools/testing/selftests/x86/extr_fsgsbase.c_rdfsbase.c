
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long rdfsbase(void)
{
 unsigned long fsbase;

 asm volatile("rdfsbase %0" : "=r" (fsbase) :: "memory");

 return fsbase;
}
