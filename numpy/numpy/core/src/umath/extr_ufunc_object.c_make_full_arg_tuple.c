
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * out; int * in; } ;
typedef TYPE_1__ ufunc_full_args ;
typedef int npy_intp ;
typedef int PyObject ;


 int * PyDict_GetItem (int *,int ) ;
 scalar_t__ PyTuple_Check (int *) ;
 int * PyTuple_GET_ITEM (int *,int) ;
 int PyTuple_GET_SIZE (int *) ;
 int * PyTuple_GetSlice (int *,int ,int) ;
 void* PyTuple_New (int) ;
 int PyTuple_SET_ITEM (int *,int,int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 int Py_XDECREF (int *) ;
 int assert (int) ;
 int npy_um_str_out ;
 scalar_t__ tuple_all_none (int *) ;

__attribute__((used)) static int
make_full_arg_tuple(
        ufunc_full_args *full_args,
        npy_intp nin, npy_intp nout,
        PyObject *args, PyObject *kwds)
{
    PyObject *out_kwd = ((void*)0);
    npy_intp nargs = PyTuple_GET_SIZE(args);
    npy_intp i;


    assert(nin <= nargs && nargs <= nin + nout);


    full_args->in = ((void*)0);
    full_args->out = ((void*)0);


    full_args->in = PyTuple_GetSlice(args, 0, nin);
    if (full_args->in == ((void*)0)) {
        goto fail;
    }


    out_kwd = kwds ? PyDict_GetItem(kwds, npy_um_str_out) : ((void*)0);

    if (out_kwd != ((void*)0)) {
        assert(nargs == nin);
        if (out_kwd == Py_None) {
            return 0;
        }
        else if (PyTuple_Check(out_kwd)) {
            assert(PyTuple_GET_SIZE(out_kwd) == nout);
            if (tuple_all_none(out_kwd)) {
                return 0;
            }
            Py_INCREF(out_kwd);
            full_args->out = out_kwd;
            return 0;
        }
        else {

            full_args->out = PyTuple_New(nout);
            if (full_args->out == ((void*)0)) {
                goto fail;
            }
            Py_INCREF(out_kwd);
            PyTuple_SET_ITEM(full_args->out, 0, out_kwd);
            for (i = 1; i < nout; ++i) {
                Py_INCREF(Py_None);
                PyTuple_SET_ITEM(full_args->out, i, Py_None);
            }
            return 0;
        }
    }


    if (nargs == nin) {
        return 0;
    }

    full_args->out = PyTuple_New(nout);
    if (full_args->out == ((void*)0)) {
        goto fail;
    }
    for (i = nin; i < nargs; ++i) {
        PyObject *item = PyTuple_GET_ITEM(args, i);
        Py_INCREF(item);
        PyTuple_SET_ITEM(full_args->out, i - nin, item);
    }
    for (i = nargs; i < nin + nout; ++i) {
        Py_INCREF(Py_None);
        PyTuple_SET_ITEM(full_args->out, i - nin, Py_None);
    }


    if (tuple_all_none(full_args->out)) {
        Py_DECREF(full_args->out);
        full_args->out = ((void*)0);
    }
    return 0;

fail:
    Py_XDECREF(full_args->in);
    Py_XDECREF(full_args->out);
    return -1;
}
