
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* tp_free ) (int *) ;} ;
struct TYPE_5__ {int * nested_child; int * iter; } ;
typedef int PyObject ;
typedef TYPE_1__ NewNpyArrayIterObject ;


 int NpyIter_Deallocate (int *) ;
 scalar_t__ PyErr_WarnEx (int ,char*,int) ;
 int PyErr_WriteUnraisable (int *) ;
 int PyExc_RuntimeWarning ;
 int * PyUString_FromString (char*) ;
 int Py_DECREF (int *) ;
 int * Py_None ;
 TYPE_3__* Py_TYPE (TYPE_1__*) ;
 int Py_XDECREF (int *) ;
 scalar_t__ npyiter_has_writeback (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static void
npyiter_dealloc(NewNpyArrayIterObject *self)
{
    if (self->iter) {
        if (npyiter_has_writeback(self->iter)) {
            if (PyErr_WarnEx(PyExc_RuntimeWarning,
                    "Temporary data has not been written back to one of the "
                    "operands. Typically nditer is used as a context manager "
                    "otherwise 'close' must be called before reading iteration "
                    "results.", 1) < 0) {
                PyObject *s;

                s = PyUString_FromString("npyiter_dealloc");
                if (s) {
                    PyErr_WriteUnraisable(s);
                    Py_DECREF(s);
                }
                else {
                    PyErr_WriteUnraisable(Py_None);
                }
            }
        }
        NpyIter_Deallocate(self->iter);
        self->iter = ((void*)0);
        Py_XDECREF(self->nested_child);
        self->nested_child = ((void*)0);
    }
    Py_TYPE(self)->tp_free((PyObject*)self);
}
