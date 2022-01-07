
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void set_eflags(unsigned long eflags)
{
 asm volatile ("pushq %0\n\tpopfq" : : "rm" (eflags) : "flags");
}
