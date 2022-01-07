
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int names; } ;
typedef int Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;


 int PyErr_Format (int ,char*,int ) ;
 int PyExc_IndexError ;
 int * PySequence_GetItem (int ,int ) ;
 int Py_DECREF (int *) ;
 int * _subscript_by_name (TYPE_1__*,int *) ;

__attribute__((used)) static PyObject *
_subscript_by_index(PyArray_Descr *self, Py_ssize_t i)
{
    PyObject *name = PySequence_GetItem(self->names, i);
    PyObject *ret;
    if (name == ((void*)0)) {
        PyErr_Format(PyExc_IndexError,
                     "Field index %zd out of range.", i);
        return ((void*)0);
    }
    ret = _subscript_by_name(self, name);
    Py_DECREF(name);
    return ret;
}
