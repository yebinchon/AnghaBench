
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayFlagsObject ;


 scalar_t__ DEPRECATE (char*) ;
 int NPY_ARRAY_UPDATEIFCOPY ;
 int * Py_False ;
 int Py_INCREF (int *) ;
 int * Py_True ;

__attribute__((used)) static PyObject *
arrayflags_updateifcopy_get(PyArrayFlagsObject *self)
{
    PyObject *item;

    if(DEPRECATE("UPDATEIFCOPY deprecated, use WRITEBACKIFCOPY instead") < 0) {
        return ((void*)0);
    }
    if ((self->flags & (NPY_ARRAY_UPDATEIFCOPY)) == (NPY_ARRAY_UPDATEIFCOPY)) {
        item = Py_True;
    }
    else {
        item = Py_False;
    }
    Py_INCREF(item);
    return item;
}
