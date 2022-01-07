
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ elsize; } ;
struct TYPE_10__ {int * ob_type; } ;
typedef TYPE_1__ PyObject ;
typedef TYPE_2__ PyArray_Descr ;
typedef int PyArrayObject ;


 int NPY_ITEM_HASOBJECT ;
 int PyArg_ParseTuple (TYPE_1__*,char*,int*) ;
 TYPE_2__* PyArray_DESCR (int *) ;
 int PyArray_IS_C_CONTIGUOUS (int *) ;
 int PyArray_IS_F_CONTIGUOUS (int *) ;
 int PyArray_Type ;
 scalar_t__ PyDataType_FLAGCHK (TYPE_2__*,int ) ;
 int PyErr_Format (int ,char*) ;
 int PyExc_ValueError ;
 scalar_t__ PyType_IsSubtype (int *,int *) ;
 TYPE_1__* array_reduce_ex_picklebuffer (int *,int) ;
 TYPE_1__* array_reduce_ex_regular (int *,int) ;

__attribute__((used)) static PyObject *
array_reduce_ex(PyArrayObject *self, PyObject *args)
{
    int protocol;
    PyArray_Descr *descr = ((void*)0);

    if (!PyArg_ParseTuple(args, "i", &protocol)) {
        return ((void*)0);
    }

    descr = PyArray_DESCR(self);
    if ((protocol < 5) ||
        (!PyArray_IS_C_CONTIGUOUS((PyArrayObject*)self) &&
         !PyArray_IS_F_CONTIGUOUS((PyArrayObject*)self)) ||
        PyDataType_FLAGCHK(descr, NPY_ITEM_HASOBJECT) ||
        (PyType_IsSubtype(((PyObject*)self)->ob_type, &PyArray_Type) &&
         ((PyObject*)self)->ob_type != &PyArray_Type) ||
        descr->elsize == 0) {




        return array_reduce_ex_regular(self, protocol);
    }
    else if (protocol == 5) {
        return array_reduce_ex_picklebuffer(self, protocol);
    }
    else {
        PyErr_Format(PyExc_ValueError,
                     "__reduce_ex__ called with protocol > 5");
        return ((void*)0);
    }
}
