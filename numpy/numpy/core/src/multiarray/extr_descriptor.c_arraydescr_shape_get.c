
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* subarray; } ;
struct TYPE_5__ {int * shape; } ;
typedef int PyObject ;
typedef TYPE_2__ PyArray_Descr ;


 int PyDataType_HASSUBARRAY (TYPE_2__*) ;
 int PyTuple_Check (int *) ;
 int * PyTuple_New (int ) ;
 int Py_INCREF (int *) ;
 int assert (int ) ;

__attribute__((used)) static PyObject *
arraydescr_shape_get(PyArray_Descr *self)
{
    if (!PyDataType_HASSUBARRAY(self)) {
        return PyTuple_New(0);
    }
    assert(PyTuple_Check(self->subarray->shape));
    Py_INCREF(self->subarray->shape);
    return self->subarray->shape;
}
