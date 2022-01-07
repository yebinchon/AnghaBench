
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;


 int PyArray_Check (int *) ;
 int PyArray_DATA (int *) ;
 int * PyArray_DESCR (int *) ;
 int PyArray_DIMS (int *) ;
 int PyArray_FLAGS (int *) ;
 int PyArray_NDIM (int *) ;
 int * PyArray_NewFromDescrAndBase (scalar_t__,int *,int ,int ,int ,int ,int ,int *,int *) ;
 int PyArray_STRIDES (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int * PyTuple_GET_ITEM (int *,int ) ;
 int PyTuple_Size (int *) ;
 int Py_INCREF (int *) ;
 scalar_t__ Py_TYPE (int *) ;

__attribute__((used)) static PyObject *
array_wraparray(PyArrayObject *self, PyObject *args)
{
    PyArrayObject *arr;
    PyObject *obj;

    if (PyTuple_Size(args) < 1) {
        PyErr_SetString(PyExc_TypeError,
                        "only accepts 1 argument");
        return ((void*)0);
    }
    obj = PyTuple_GET_ITEM(args, 0);
    if (obj == ((void*)0)) {
        return ((void*)0);
    }
    if (!PyArray_Check(obj)) {
        PyErr_SetString(PyExc_TypeError,
                        "can only be called with ndarray object");
        return ((void*)0);
    }
    arr = (PyArrayObject *)obj;

    if (Py_TYPE(self) != Py_TYPE(arr)) {
        PyArray_Descr *dtype = PyArray_DESCR(arr);
        Py_INCREF(dtype);
        return PyArray_NewFromDescrAndBase(
                Py_TYPE(self),
                dtype,
                PyArray_NDIM(arr),
                PyArray_DIMS(arr),
                PyArray_STRIDES(arr), PyArray_DATA(arr),
                PyArray_FLAGS(arr), (PyObject *)self, obj);
    } else {

        Py_INCREF(arr);
        return (PyObject *)arr;
    }
}
