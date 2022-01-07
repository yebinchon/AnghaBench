
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline long x86_syscall3(long nr, long a0, long a1, long a2)
{
 long ret;

 asm volatile ("syscall" : "=a" (ret) : "a" (nr),
        "D" (a0), "S" (a1), "d" (a2) :
        "cc", "memory", "rcx",
        "r8", "r9", "r10", "r11" );





 return ret;
}
