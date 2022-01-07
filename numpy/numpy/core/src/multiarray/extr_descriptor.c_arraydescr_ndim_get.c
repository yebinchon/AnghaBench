
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* subarray; } ;
struct TYPE_5__ {int shape; } ;
typedef int Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_2__ PyArray_Descr ;


 int PyDataType_HASSUBARRAY (TYPE_2__*) ;
 int * PyInt_FromLong (int ) ;
 int PyTuple_Size (int ) ;

__attribute__((used)) static PyObject *
arraydescr_ndim_get(PyArray_Descr *self)
{
    Py_ssize_t ndim;

    if (!PyDataType_HASSUBARRAY(self)) {
        return PyInt_FromLong(0);
    }





    ndim = PyTuple_Size(self->subarray->shape);
    return PyInt_FromLong(ndim);
}
