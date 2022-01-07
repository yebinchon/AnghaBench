
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * nested_child; int * iter; } ;
typedef int PyObject ;
typedef int NpyIter ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 int NpyIter_Deallocate (int *) ;
 int Py_RETURN_NONE ;
 int Py_XDECREF (int *) ;

__attribute__((used)) static PyObject *
npyiter_close(NewNpyArrayIterObject *self)
{
    NpyIter *iter = self->iter;
    int ret;
    if (self->iter == ((void*)0)) {
        Py_RETURN_NONE;
    }
    ret = NpyIter_Deallocate(iter);
    self->iter = ((void*)0);
    Py_XDECREF(self->nested_child);
    self->nested_child = ((void*)0);
    if (ret < 0) {
        return ((void*)0);
    }
    Py_RETURN_NONE;
}
