
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char kind; int fields; int * names; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;


 scalar_t__ PyDataType_HASFIELDS (TYPE_1__*) ;
 int PyDataType_REFCHK (TYPE_1__*) ;
 int * PyDict_GetItem (int ,int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int * PyTuple_GET_ITEM (int *,int ) ;
 int PyTuple_GET_SIZE (int *) ;

__attribute__((used)) static int
invalid_union_object_dtype(PyArray_Descr *new, PyArray_Descr *conv)
{
    PyObject *name, *tup;
    PyArray_Descr *dtype;

    if (!PyDataType_REFCHK(new) && !PyDataType_REFCHK(conv)) {
        return 0;
    }
    if (PyDataType_HASFIELDS(new) || new->kind != 'O') {
        goto fail;
    }
    if (!PyDataType_HASFIELDS(conv) || PyTuple_GET_SIZE(conv->names) != 1) {
        goto fail;
    }
    name = PyTuple_GET_ITEM(conv->names, 0);
    if (name == ((void*)0)) {
        return -1;
    }
    tup = PyDict_GetItem(conv->fields, name);
    if (tup == ((void*)0)) {
        return -1;
    }
    dtype = (PyArray_Descr *)PyTuple_GET_ITEM(tup, 0);
    if (dtype == ((void*)0)) {
        return -1;
    }
    if (dtype->kind != 'O') {
        goto fail;
    }
    return 0;

fail:
    PyErr_SetString(PyExc_ValueError,
            "dtypes of the form (old_dtype, new_dtype) containing the object "
            "dtype are not supported");
    return -1;
}
