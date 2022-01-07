
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;


 int PyArg_ParseTuple (int *,char*,int ,int **) ;
 int * PyArray_CastToType (int *,int *,int ) ;
 int PyArray_CheckExact (int *) ;
 int PyArray_DATA (int *) ;
 int * PyArray_DESCR (int *) ;
 int PyArray_DIMS (int *) ;
 int PyArray_DescrConverter ;
 scalar_t__ PyArray_EquivTypes (int *,int *) ;
 int PyArray_FLAGS (int *) ;
 int PyArray_NDIM (int *) ;
 scalar_t__ PyArray_NewFromDescrAndBase (int *,int *,int ,int ,int ,int ,int ,int *,int *) ;
 int PyArray_STRIDES (int *) ;
 int PyArray_Type ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int Py_XDECREF (int *) ;

__attribute__((used)) static PyObject *
array_getarray(PyArrayObject *self, PyObject *args)
{
    PyArray_Descr *newtype = ((void*)0);
    PyObject *ret;

    if (!PyArg_ParseTuple(args, "|O&:__array__",
                            PyArray_DescrConverter, &newtype)) {
        Py_XDECREF(newtype);
        return ((void*)0);
    }


    if (!PyArray_CheckExact(self)) {
        PyArrayObject *new;

        Py_INCREF(PyArray_DESCR(self));
        new = (PyArrayObject *)PyArray_NewFromDescrAndBase(
                &PyArray_Type,
                PyArray_DESCR(self),
                PyArray_NDIM(self),
                PyArray_DIMS(self),
                PyArray_STRIDES(self),
                PyArray_DATA(self),
                PyArray_FLAGS(self),
                ((void*)0),
                (PyObject *)self
        );
        if (new == ((void*)0)) {
            return ((void*)0);
        }
        self = new;
    }
    else {
        Py_INCREF(self);
    }

    if ((newtype == ((void*)0)) || PyArray_EquivTypes(PyArray_DESCR(self), newtype)) {
        return (PyObject *)self;
    }
    else {
        ret = PyArray_CastToType(self, newtype, 0);
        Py_DECREF(self);
        return ret;
    }
}
