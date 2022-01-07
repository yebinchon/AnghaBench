
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_intp ;
typedef int npy_bool ;
typedef int PyObject ;


 int NPY_FALSE ;
 int NPY_TRUE ;
 scalar_t__ PyTuple_GET_ITEM (int *,scalar_t__) ;
 scalar_t__ PyTuple_GET_SIZE (int *) ;
 scalar_t__ Py_None ;

__attribute__((used)) static npy_bool
tuple_all_none(PyObject *tup) {
    npy_intp i;
    for (i = 0; i < PyTuple_GET_SIZE(tup); ++i) {
        if (PyTuple_GET_ITEM(tup, i) != Py_None) {
            return NPY_FALSE;
        }
    }
    return NPY_TRUE;
}
