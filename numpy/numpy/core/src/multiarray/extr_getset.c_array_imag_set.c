
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
 int PyExc_TypeError ;
 int Py_DECREF (int *) ;
 int * _get_part (int *,int) ;

__attribute__((used)) static int
array_imag_set(PyArrayObject *self, PyObject *val)
{
    if (val == ((void*)0)) {
        PyErr_SetString(PyExc_AttributeError,
                "Cannot delete array imaginary part");
        return -1;
    }
    if (PyArray_ISCOMPLEX(self)) {
        PyArrayObject *ret;
        PyArrayObject *new;
        int retcode;

        ret = _get_part(self, 1);
        if (ret == ((void*)0)) {
            return -1;
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
    else {
        PyErr_SetString(PyExc_TypeError,
                "array does not have imaginary part to set");
        return -1;
    }
}
