
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * out; int * in; int * member_1; int * member_0; } ;
typedef TYPE_1__ ufunc_full_args ;
struct TYPE_11__ {int out_i; TYPE_1__ args; TYPE_3__* ufunc; } ;
typedef TYPE_2__ _ufunc_context ;
struct TYPE_12__ {int nin; int nout; int nargs; } ;
typedef TYPE_3__ PyUFuncObject ;
typedef int PyTupleObject ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_MAXARGS ;
 scalar_t__ PyTuple_New (int) ;
 int PyTuple_SET_ITEM (int *,int,int *) ;
 int PyUFunc_CheckOverride (TYPE_3__*,char*,int *,int *,int **) ;
 int PyUFunc_GenericFunction (TYPE_3__*,int *,int *,int **) ;
 int Py_DECREF (int *) ;
 int Py_XDECREF (int *) ;
 int * _apply_array_wrap (int *,int *,TYPE_2__*) ;
 int _find_array_wrap (TYPE_1__,int *,int **,int,int) ;
 scalar_t__ make_full_arg_tuple (TYPE_1__*,int,int,int *,int *) ;

__attribute__((used)) static PyObject *
ufunc_generic_call(PyUFuncObject *ufunc, PyObject *args, PyObject *kwds)
{
    int i;
    PyArrayObject *mps[NPY_MAXARGS];
    PyObject *retobj[NPY_MAXARGS];
    PyObject *wraparr[NPY_MAXARGS];
    PyObject *override = ((void*)0);
    ufunc_full_args full_args = {((void*)0), ((void*)0)};
    int errval;

    errval = PyUFunc_CheckOverride(ufunc, "__call__", args, kwds, &override);
    if (errval) {
        return ((void*)0);
    }
    else if (override) {
        return override;
    }

    errval = PyUFunc_GenericFunction(ufunc, args, kwds, mps);
    if (errval < 0) {
        return ((void*)0);
    }


    for (i = 0; i < ufunc->nin; i++) {
        Py_XDECREF(mps[i]);
    }
    if (make_full_arg_tuple(&full_args, ufunc->nin, ufunc->nout, args, kwds) < 0) {
        goto fail;
    }
    _find_array_wrap(full_args, kwds, wraparr, ufunc->nin, ufunc->nout);


    for (i = 0; i < ufunc->nout; i++) {
        int j = ufunc->nin+i;
        _ufunc_context context;
        PyObject *wrapped;

        context.ufunc = ufunc;
        context.args = full_args;
        context.out_i = i;

        wrapped = _apply_array_wrap(wraparr[i], mps[j], &context);
        mps[j] = ((void*)0);
        if (wrapped == ((void*)0)) {
            for (j = 0; j < i; j++) {
                Py_DECREF(retobj[j]);
            }
            goto fail;
        }

        retobj[i] = wrapped;
    }

    Py_XDECREF(full_args.in);
    Py_XDECREF(full_args.out);

    if (ufunc->nout == 1) {
        return retobj[0];
    }
    else {
        PyTupleObject *ret;

        ret = (PyTupleObject *)PyTuple_New(ufunc->nout);
        for (i = 0; i < ufunc->nout; i++) {
            PyTuple_SET_ITEM(ret, i, retobj[i]);
        }
        return (PyObject *)ret;
    }

fail:
    Py_XDECREF(full_args.in);
    Py_XDECREF(full_args.out);
    for (i = ufunc->nin; i < ufunc->nargs; i++) {
        Py_XDECREF(mps[i]);
    }
    return ((void*)0);
}
