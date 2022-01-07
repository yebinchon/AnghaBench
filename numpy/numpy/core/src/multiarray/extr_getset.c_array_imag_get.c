
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_ARRAY_WRITEABLE ;
 int PyArray_CLEARFLAGS (int *,int ) ;
 int PyArray_DESCR (int *) ;
 int PyArray_DIMS (int *) ;
 scalar_t__ PyArray_ISCOMPLEX (int *) ;
 int PyArray_ISFORTRAN (int *) ;
 int PyArray_NDIM (int *) ;
 scalar_t__ PyArray_NewFromDescr (int ,int ,int ,int ,int *,int *,int ,int *) ;
 int Py_INCREF (int ) ;
 int Py_TYPE (int *) ;
 int * _get_part (int *,int) ;
 scalar_t__ _zerofill (int *) ;

__attribute__((used)) static PyObject *
array_imag_get(PyArrayObject *self)
{
    PyArrayObject *ret;

    if (PyArray_ISCOMPLEX(self)) {
        ret = _get_part(self, 1);
    }
    else {
        Py_INCREF(PyArray_DESCR(self));
        ret = (PyArrayObject *)PyArray_NewFromDescr(Py_TYPE(self),
                                                    PyArray_DESCR(self),
                                                    PyArray_NDIM(self),
                                                    PyArray_DIMS(self),
                                                    ((void*)0), ((void*)0),
                                                    PyArray_ISFORTRAN(self),
                                                    (PyObject *)self);
        if (ret == ((void*)0)) {
            return ((void*)0);
        }
        if (_zerofill(ret) < 0) {
            return ((void*)0);
        }
        PyArray_CLEARFLAGS(ret, NPY_ARRAY_WRITEABLE);
    }
    return (PyObject *) ret;
}
