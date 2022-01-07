
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 scalar_t__ PyArray_FROM_O (int *) ;
 scalar_t__ PyArray_ISCOMPLEX (int *) ;
 int PyArray_MoveInto (int *,int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_AttributeError ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int * _get_part (int *,int ) ;

__attribute__((used)) static int
array_real_set(PyArrayObject *self, PyObject *val)
{
    PyArrayObject *ret;
    PyArrayObject *new;
    int retcode;

    if (val == ((void*)0)) {
        PyErr_SetString(PyExc_AttributeError,
                "Cannot delete array real part");
        return -1;
    }
    if (PyArray_ISCOMPLEX(self)) {
        ret = _get_part(self, 0);
        if (ret == ((void*)0)) {
            return -1;
        }
    }
    else {
        Py_INCREF(self);
        ret = self;
    }
    new = (PyArrayObject *)PyArray_FROM_O(val);
    if (new == ((void*)0)) {
        Py_DECREF(ret);
        return -1;
    }
    retcode = PyArray_MoveInto(ret, new);
    Py_DECREF(ret);
    Py_DECREF(new);
    return retcode;
}
