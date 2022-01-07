
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; int * shape; } ;
typedef scalar_t__ Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_ArrayDescr ;


 int PyErr_SetString (int ,char*) ;
 int PyExc_SystemError ;
 scalar_t__ PyInt_Check (int *) ;
 int PyList_Append (int *,int *) ;
 scalar_t__ PyTuple_Check (int *) ;
 int * PyTuple_GetItem (int *,scalar_t__) ;
 scalar_t__ PyTuple_Size (int *) ;
 int Py_DECREF (int ) ;
 int Py_INCREF (int ) ;
 int _array_descr_walk (int ,int *) ;

__attribute__((used)) static int _array_descr_walk_subarray(PyArray_ArrayDescr* adescr, PyObject *l)
{
    PyObject *item;
    Py_ssize_t i;
    int st;




    if (PyTuple_Check(adescr->shape)) {
        for(i = 0; i < PyTuple_Size(adescr->shape); ++i) {
            item = PyTuple_GetItem(adescr->shape, i);
            if (item == ((void*)0)) {
                PyErr_SetString(PyExc_SystemError,
                        "(Hash) Error while getting shape item of subarray dtype ???");
                return -1;
            }
            PyList_Append(l, item);
        }
    }
    else if (PyInt_Check(adescr->shape)) {
        PyList_Append(l, adescr->shape);
    }
    else {
        PyErr_SetString(PyExc_SystemError,
                "(Hash) Shape of subarray dtype neither a tuple or int ???");
        return -1;
    }

    Py_INCREF(adescr->base);
    st = _array_descr_walk(adescr->base, l);
    Py_DECREF(adescr->base);

    return st;
}
