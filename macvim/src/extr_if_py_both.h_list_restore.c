
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* li_prev; } ;
typedef TYPE_1__ listitem_T ;
typedef int list_T ;
typedef size_t Py_ssize_t ;


 int list_insert (int *,TYPE_1__*,TYPE_1__*) ;
 int listitem_remove (int *,TYPE_1__*) ;

__attribute__((used)) static void
list_restore(Py_ssize_t numadded, Py_ssize_t numreplaced, Py_ssize_t slicelen,
 list_T *l, listitem_T **lis, listitem_T *lastaddedli)
{
    while (numreplaced--)
    {
 list_insert(l, lis[numreplaced], lis[slicelen + numreplaced]);
 listitem_remove(l, lis[slicelen + numreplaced]);
    }
    while (numadded--)
    {
 listitem_T *next;

 next = lastaddedli->li_prev;
 listitem_remove(l, lastaddedli);
 lastaddedli = next;
    }
}
