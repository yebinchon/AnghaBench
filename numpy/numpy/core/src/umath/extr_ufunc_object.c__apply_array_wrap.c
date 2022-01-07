
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int out_i; int ufunc; int args; } ;
typedef TYPE_1__ _ufunc_context ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int * PyArray_Return (int *) ;
 int PyErr_Clear () ;
 scalar_t__ PyErr_ExceptionMatches (int ) ;
 int PyExc_TypeError ;
 int * PyObject_CallFunctionObjArgs (int *,int *,int *,...) ;
 int * Py_BuildValue (char*,int ,int *,int ) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 int * _get_wrap_prepare_args (int ) ;

__attribute__((used)) static PyObject *
_apply_array_wrap(
            PyObject *wrap, PyArrayObject *obj, _ufunc_context const *context) {
    if (wrap == ((void*)0)) {

        return PyArray_Return(obj);
    }
    else if (wrap == Py_None) {
        Py_DECREF(wrap);
        return (PyObject *)obj;
    }
    else {
        PyObject *res;
        PyObject *py_context = ((void*)0);


        if (context == ((void*)0)) {
            py_context = Py_None;
            Py_INCREF(py_context);
        }
        else {
            PyObject *args_tup;

            args_tup = _get_wrap_prepare_args(context->args);
            if (args_tup == ((void*)0)) {
                goto fail;
            }
            py_context = Py_BuildValue("OOi",
                context->ufunc, args_tup, context->out_i);
            Py_DECREF(args_tup);
            if (py_context == ((void*)0)) {
                goto fail;
            }
        }

        res = PyObject_CallFunctionObjArgs(wrap, obj, py_context, ((void*)0));
        Py_DECREF(py_context);


        if (res == ((void*)0) && PyErr_ExceptionMatches(PyExc_TypeError)) {
            PyErr_Clear();
            res = PyObject_CallFunctionObjArgs(wrap, obj, ((void*)0));
        }
        Py_DECREF(wrap);
        Py_DECREF(obj);
        return res;
    fail:
        Py_DECREF(wrap);
        Py_DECREF(obj);
        return ((void*)0);
    }
}
