
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef scalar_t__ Py_ssize_t ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_ARRAY_OWNDATA ;
 scalar_t__ NPY_SIZEOF_PYARRAYOBJECT ;
 scalar_t__ PyArray_CHKFLAGS (int *,int ) ;
 scalar_t__ PyArray_NBYTES (int *) ;
 int PyArray_NDIM (int *) ;
 int * PyLong_FromSsize_t (scalar_t__) ;

__attribute__((used)) static PyObject *
array_sizeof(PyArrayObject *self)
{

    Py_ssize_t nbytes = NPY_SIZEOF_PYARRAYOBJECT +
        PyArray_NDIM(self) * sizeof(npy_intp) * 2;
    if (PyArray_CHKFLAGS(self, NPY_ARRAY_OWNDATA)) {
        nbytes += PyArray_NBYTES(self);
    }
    return PyLong_FromSsize_t(nbytes);
}
