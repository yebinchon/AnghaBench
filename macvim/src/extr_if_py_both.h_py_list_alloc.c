
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lv_refcount; } ;
typedef TYPE_1__ list_T ;


 int PyErr_NoMemory () ;
 TYPE_1__* list_alloc () ;

__attribute__((used)) static list_T *
py_list_alloc(void)
{
    list_T *ret;

    if (!(ret = list_alloc()))
    {
 PyErr_NoMemory();
 return ((void*)0);
    }
    ++ret->lv_refcount;

    return ret;
}
