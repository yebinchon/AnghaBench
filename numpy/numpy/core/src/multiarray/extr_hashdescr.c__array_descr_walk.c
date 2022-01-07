
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int subarray; int * fields; int names; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;


 scalar_t__ PyDataType_HASSUBARRAY (TYPE_1__*) ;
 int * Py_None ;
 int _array_descr_builtin (TYPE_1__*,int *) ;
 int _array_descr_walk_fields (int ,int *,int *) ;
 int _array_descr_walk_subarray (int ,int *) ;
 scalar_t__ _is_array_descr_builtin (TYPE_1__*) ;

__attribute__((used)) static int _array_descr_walk(PyArray_Descr* descr, PyObject *l)
{
    int st;

    if (_is_array_descr_builtin(descr)) {
        return _array_descr_builtin(descr, l);
    }
    else {
        if(descr->fields != ((void*)0) && descr->fields != Py_None) {
            st = _array_descr_walk_fields(descr->names, descr->fields, l);
            if (st) {
                return -1;
            }
        }
        if(PyDataType_HASSUBARRAY(descr)) {
            st = _array_descr_walk_subarray(descr->subarray, l);
            if (st) {
                return -1;
            }
        }
    }

    return 0;
}
