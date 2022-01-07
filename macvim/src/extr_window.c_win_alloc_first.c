
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tp_topframe; } ;


 scalar_t__ FAIL ;
 int OK ;
 TYPE_1__* alloc_tabpage () ;
 TYPE_1__* curtab ;
 TYPE_1__* first_tabpage ;
 int topframe ;
 scalar_t__ win_alloc_firstwin (int *) ;

int
win_alloc_first()
{
    if (win_alloc_firstwin(((void*)0)) == FAIL)
 return FAIL;
    return OK;
}
