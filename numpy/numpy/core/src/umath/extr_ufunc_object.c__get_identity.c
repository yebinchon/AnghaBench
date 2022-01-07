
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int npy_bool ;
struct TYPE_4__ {int identity; int * identity_value; } ;
typedef TYPE_1__ PyUFuncObject ;
typedef int PyObject ;


 int PyErr_Format (int ,char*,int ) ;
 int PyExc_ValueError ;
 int * PyInt_FromLong (int) ;






 int Py_INCREF (int *) ;
 int Py_RETURN_NONE ;
 int ufunc_get_name_cstr (TYPE_1__*) ;

__attribute__((used)) static PyObject *
_get_identity(PyUFuncObject *ufunc, npy_bool *reorderable) {
    switch(ufunc->identity) {
    case 130:
        *reorderable = 1;
        return PyInt_FromLong(1);

    case 128:
        *reorderable = 1;
        return PyInt_FromLong(0);

    case 132:
        *reorderable = 1;
        return PyInt_FromLong(-1);

    case 129:
        *reorderable = 1;
        Py_RETURN_NONE;

    case 131:
        *reorderable = 0;
        Py_RETURN_NONE;

    case 133:
        *reorderable = 1;
        Py_INCREF(ufunc->identity_value);
        return ufunc->identity_value;

    default:
        PyErr_Format(PyExc_ValueError,
                "ufunc %s has an invalid identity", ufunc_get_name_cstr(ufunc));
        return ((void*)0);
    }
}
