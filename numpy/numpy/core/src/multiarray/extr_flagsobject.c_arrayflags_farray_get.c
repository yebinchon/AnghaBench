
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayFlagsObject ;


 int NPY_ARRAY_ALIGNED ;
 int NPY_ARRAY_C_CONTIGUOUS ;
 int NPY_ARRAY_F_CONTIGUOUS ;
 int NPY_ARRAY_WRITEABLE ;
 int * Py_False ;
 int Py_INCREF (int *) ;
 int * Py_True ;

__attribute__((used)) static PyObject *
arrayflags_farray_get(PyArrayFlagsObject *self)
{
    PyObject *item;

    if (((self->flags & (NPY_ARRAY_ALIGNED|
                         NPY_ARRAY_WRITEABLE|
                         NPY_ARRAY_F_CONTIGUOUS)) != 0) &&
        !((self->flags & NPY_ARRAY_C_CONTIGUOUS) != 0)) {
        item = Py_True;
    }
    else {
        item = Py_False;
    }
    Py_INCREF(item);
    return item;
}
