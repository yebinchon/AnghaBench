
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * fields; } ;
typedef TYPE_1__ PyArray_Descr ;


 scalar_t__ PyDataType_HASSUBARRAY (TYPE_1__*) ;
 int * Py_None ;

__attribute__((used)) static int _is_array_descr_builtin(PyArray_Descr* descr)
{
    if (descr->fields != ((void*)0) && descr->fields != Py_None) {
        return 0;
    }
    if (PyDataType_HASSUBARRAY(descr)) {
        return 0;
    }
    return 1;
}
