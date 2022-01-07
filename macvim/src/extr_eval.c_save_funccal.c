
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int funccall_T ;


 int * current_funccal ;

void *
save_funccal()
{
    funccall_T *fc = current_funccal;

    current_funccal = ((void*)0);
    return (void *)fc;
}
