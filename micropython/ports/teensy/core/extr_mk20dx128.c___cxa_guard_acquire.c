
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((weak))
int __cxa_guard_acquire (char *g)
{
 return !(*g);
}
