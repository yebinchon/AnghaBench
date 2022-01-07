
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t int_find (int) ;

__attribute__((used)) static void int_doall_arg(int *p, short *f)
{
    f[int_find(*p)]++;
}
