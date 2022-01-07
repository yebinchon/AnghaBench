
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * arg ;
 int * flag ;
 int opt_index ;

void opt_begin(void)
{
    opt_index = 1;
    arg = ((void*)0);
    flag = ((void*)0);
}
