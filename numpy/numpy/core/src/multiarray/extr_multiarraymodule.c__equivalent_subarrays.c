
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int base; int shape; } ;
typedef TYPE_1__ PyArray_ArrayDescr ;


 int PyArray_EquivTypes (int ,int ) ;
 int PyErr_Clear () ;
 scalar_t__ PyErr_Occurred () ;
 int PyObject_RichCompareBool (int ,int ,int ) ;
 int Py_EQ ;

__attribute__((used)) static int
_equivalent_subarrays(PyArray_ArrayDescr *sub1, PyArray_ArrayDescr *sub2)
{
    int val;

    if (sub1 == sub2) {
        return 1;

    }
    if (sub1 == ((void*)0) || sub2 == ((void*)0)) {
        return 0;
    }

    val = PyObject_RichCompareBool(sub1->shape, sub2->shape, Py_EQ);
    if (val != 1 || PyErr_Occurred()) {
        PyErr_Clear();
        return 0;
    }

    return PyArray_EquivTypes(sub1->base, sub2->base);
}
