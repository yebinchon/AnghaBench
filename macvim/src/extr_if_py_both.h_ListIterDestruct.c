
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lw; int list; } ;
typedef TYPE_1__ listiterinfo_T ;


 int PyMem_Free (TYPE_1__*) ;
 int list_rem_watch (int ,int *) ;

__attribute__((used)) static void
ListIterDestruct(listiterinfo_T *lii)
{
    list_rem_watch(lii->list, &lii->lw);
    PyMem_Free(lii);
}
