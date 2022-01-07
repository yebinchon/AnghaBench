
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t int_find (int) ;
 int * int_found ;

__attribute__((used)) static void int_doall(int *v)
{
    int_found[int_find(*v)]++;
}
