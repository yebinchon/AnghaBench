
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* lw_item; } ;
struct TYPE_7__ {TYPE_2__ lw; } ;
typedef TYPE_3__ listiterinfo_T ;
struct TYPE_5__ {struct TYPE_5__* li_next; int li_tv; } ;
typedef int PyObject ;


 int * ConvertToPyObject (int *) ;

__attribute__((used)) static PyObject *
ListIterNext(listiterinfo_T **lii)
{
    PyObject *ret;

    if (!((*lii)->lw.lw_item))
 return ((void*)0);

    if (!(ret = ConvertToPyObject(&((*lii)->lw.lw_item->li_tv))))
 return ((void*)0);

    (*lii)->lw.lw_item = (*lii)->lw.lw_item->li_next;

    return ret;
}
