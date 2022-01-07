
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* subarray; } ;
struct TYPE_5__ {int shape; scalar_t__ base; } ;
typedef int PyObject ;
typedef TYPE_2__ PyArray_Descr ;


 int PyDataType_HASSUBARRAY (TYPE_2__*) ;
 int * Py_BuildValue (char*,int *,int ) ;
 int Py_RETURN_NONE ;

__attribute__((used)) static PyObject *
arraydescr_subdescr_get(PyArray_Descr *self)
{
    if (!PyDataType_HASSUBARRAY(self)) {
        Py_RETURN_NONE;
    }
    return Py_BuildValue("OO",
            (PyObject *)self->subarray->base, self->subarray->shape);
}
