
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fields; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;


 int PyBytes_AsString (int *) ;
 int * PyDict_GetItem (int ,int *) ;
 int PyErr_Format (int ,char*,int ) ;
 int PyExc_KeyError ;
 int * PyTuple_GET_ITEM (int *,int ) ;
 int * PyUnicode_AsUnicodeEscapeString (int *) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;

__attribute__((used)) static PyObject *
_subscript_by_name(PyArray_Descr *self, PyObject *op)
{
    PyObject *obj = PyDict_GetItem(self->fields, op);
    PyObject *descr;
    PyObject *s;

    if (obj == ((void*)0)) {
        if (PyUnicode_Check(op)) {
            s = PyUnicode_AsUnicodeEscapeString(op);
        }
        else {
            s = op;
        }

        PyErr_Format(PyExc_KeyError,
                "Field named \'%s\' not found.", PyBytes_AsString(s));
        if (s != op) {
            Py_DECREF(s);
        }
        return ((void*)0);
    }
    descr = PyTuple_GET_ITEM(obj, 0);
    Py_INCREF(descr);
    return descr;
}
