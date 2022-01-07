
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* subarray; } ;
struct TYPE_6__ {TYPE_2__* base; } ;
typedef int PyObject ;
typedef TYPE_2__ PyArray_Descr ;


 int PyDataType_HASSUBARRAY (TYPE_2__*) ;
 int Py_INCREF (TYPE_2__*) ;

__attribute__((used)) static PyObject *
arraydescr_base_get(PyArray_Descr *self)
{
    if (!PyDataType_HASSUBARRAY(self)) {
        Py_INCREF(self);
        return (PyObject *)self;
    }
    Py_INCREF(self->subarray->base);
    return (PyObject *)(self->subarray->base);
}
