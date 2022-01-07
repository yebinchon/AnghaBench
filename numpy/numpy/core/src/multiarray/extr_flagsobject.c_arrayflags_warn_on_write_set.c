
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ arr; } ;
typedef int PyObject ;
typedef int PyArrayObject ;
typedef TYPE_1__ PyArrayFlagsObject ;


 int NPY_ARRAY_WARN_ON_WRITE ;
 int NPY_ARRAY_WRITEABLE ;
 int PyArray_ENABLEFLAGS (int *,int ) ;
 int PyArray_FLAGS (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_AttributeError ;
 int PyExc_ValueError ;
 int PyObject_IsTrue (int *) ;

__attribute__((used)) static int
arrayflags_warn_on_write_set(PyArrayFlagsObject *self, PyObject *obj)
{




    int ret;
    if (obj == ((void*)0)) {
        PyErr_SetString(PyExc_AttributeError,
                "Cannot delete flags _warn_on_write attribute");
        return -1;
    }
    ret = PyObject_IsTrue(obj);
    if (ret > 0) {
        if (!(PyArray_FLAGS((PyArrayObject*)self->arr) & NPY_ARRAY_WRITEABLE)) {
            PyErr_SetString(PyExc_ValueError,
                        "cannot set '_warn_on_write' flag when 'writable' is "
                        "False");
            return -1;
        }
        PyArray_ENABLEFLAGS((PyArrayObject*)self->arr, NPY_ARRAY_WARN_ON_WRITE);
    }
    else if (ret < 0) {
        return -1;
    }
    else {
        PyErr_SetString(PyExc_ValueError,
                        "cannot clear '_warn_on_write', set "
                        "writeable True to clear this private flag");
        return -1;
    }
    return 0;
}
