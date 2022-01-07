
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArray_DESCR (int *) ;
 int * PyDict_New () ;
 int PyDict_SetItemString (int *,char*,int *) ;
 int * PyInt_FromLong (int) ;
 int Py_DECREF (int *) ;
 int * array_dataptr_get (int *) ;
 scalar_t__ array_might_be_written (int *) ;
 int * array_protocol_descr_get (int *) ;
 int * array_protocol_strides_get (int *) ;
 int * array_shape_get (int *) ;
 int * arraydescr_protocol_typestr_get (int ) ;

__attribute__((used)) static PyObject *
array_interface_get(PyArrayObject *self)
{
    PyObject *dict;
    PyObject *obj;

    dict = PyDict_New();
    if (dict == ((void*)0)) {
        return ((void*)0);
    }

    if (array_might_be_written(self) < 0) {
        Py_DECREF(dict);
        return ((void*)0);
    }


    obj = array_dataptr_get(self);
    PyDict_SetItemString(dict, "data", obj);
    Py_DECREF(obj);

    obj = array_protocol_strides_get(self);
    PyDict_SetItemString(dict, "strides", obj);
    Py_DECREF(obj);

    obj = array_protocol_descr_get(self);
    PyDict_SetItemString(dict, "descr", obj);
    Py_DECREF(obj);

    obj = arraydescr_protocol_typestr_get(PyArray_DESCR(self));
    PyDict_SetItemString(dict, "typestr", obj);
    Py_DECREF(obj);

    obj = array_shape_get(self);
    PyDict_SetItemString(dict, "shape", obj);
    Py_DECREF(obj);

    obj = PyInt_FromLong(3);
    PyDict_SetItemString(dict, "version", obj);
    Py_DECREF(obj);

    return dict;
}
