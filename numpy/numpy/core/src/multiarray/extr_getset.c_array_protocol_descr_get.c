
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArray_DESCR (int *) ;
 int PyErr_Clear () ;
 int * PyList_New (int) ;
 int PyList_SET_ITEM (int *,int ,int *) ;
 int PyString_FromString (char*) ;
 int * PyTuple_New (int) ;
 int PyTuple_SET_ITEM (int *,int,int ) ;
 int Py_DECREF (int *) ;
 int array_typestr_get (int *) ;
 int * arraydescr_protocol_descr_get (int ) ;

__attribute__((used)) static PyObject *
array_protocol_descr_get(PyArrayObject *self)
{
    PyObject *res;
    PyObject *dobj;

    res = arraydescr_protocol_descr_get(PyArray_DESCR(self));
    if (res) {
        return res;
    }
    PyErr_Clear();


    dobj = PyTuple_New(2);
    if (dobj == ((void*)0)) {
        return ((void*)0);
    }
    PyTuple_SET_ITEM(dobj, 0, PyString_FromString(""));
    PyTuple_SET_ITEM(dobj, 1, array_typestr_get(self));
    res = PyList_New(1);
    if (res == ((void*)0)) {
        Py_DECREF(dobj);
        return ((void*)0);
    }
    PyList_SET_ITEM(res, 0, dobj);
    return res;
}
