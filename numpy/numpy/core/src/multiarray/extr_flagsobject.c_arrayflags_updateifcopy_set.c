
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * arr; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayFlagsObject ;


 scalar_t__ DEPRECATE (char*) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_AttributeError ;
 int PyExc_ValueError ;
 int * PyObject_CallMethod (int *,char*,char*,int ,int ,int ) ;
 scalar_t__ PyObject_IsTrue (int *) ;
 int Py_DECREF (int *) ;
 int Py_False ;
 int Py_None ;
 int Py_True ;

__attribute__((used)) static int
arrayflags_updateifcopy_set(PyArrayFlagsObject *self, PyObject *obj)
{
    PyObject *res;

    if (obj == ((void*)0)) {
        PyErr_SetString(PyExc_AttributeError,
                "Cannot delete flags updateifcopy attribute");
        return -1;
    }
    if (self->arr == ((void*)0)) {
        PyErr_SetString(PyExc_ValueError,
                "Cannot set flags on array scalars.");
        return -1;
    }

    if(DEPRECATE("UPDATEIFCOPY deprecated, use WRITEBACKIFCOPY instead") < 0) {
        return -1;
    }
    res = PyObject_CallMethod(self->arr, "setflags", "OOO", Py_None, Py_None,
                              (PyObject_IsTrue(obj) ? Py_True : Py_False));
    if (res == ((void*)0)) {
        return -1;
    }
    Py_DECREF(res);
    return 0;
}
