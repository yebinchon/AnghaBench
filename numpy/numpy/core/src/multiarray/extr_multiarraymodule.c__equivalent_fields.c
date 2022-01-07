
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * names; int * fields; } ;
typedef TYPE_1__ PyArray_Descr ;


 int PyErr_Clear () ;
 scalar_t__ PyErr_Occurred () ;
 int PyObject_RichCompareBool (int *,int *,int ) ;
 int Py_EQ ;

__attribute__((used)) static int
_equivalent_fields(PyArray_Descr *type1, PyArray_Descr *type2) {

    int val;

    if (type1->fields == type2->fields && type1->names == type2->names) {
        return 1;
    }
    if (type1->fields == ((void*)0) || type2->fields == ((void*)0)) {
        return 0;
    }

    val = PyObject_RichCompareBool(type1->fields, type2->fields, Py_EQ);
    if (val != 1 || PyErr_Occurred()) {
        PyErr_Clear();
        return 0;
    }

    val = PyObject_RichCompareBool(type1->names, type2->names, Py_EQ);
    if (val != 1 || PyErr_Occurred()) {
        PyErr_Clear();
        return 0;
    }

    return 1;
}
