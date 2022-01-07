
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nin; int nout; int nargs; } ;
typedef TYPE_1__ PyUFuncObject ;
typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;
typedef int NPY_ORDER ;
typedef int NPY_CASTING ;


 int Generic ;
 int PyArray_CastingConverter ;
 scalar_t__ PyArray_Check (int *) ;
 int PyArray_DescrConverter2 ;
 scalar_t__ PyArray_FromAny (int *,int *,int ,int ,int ,int *) ;
 scalar_t__ PyArray_FromArray (int *,int *,int ) ;
 int PyArray_IsScalar (int *,int ) ;
 int PyArray_OrderConverter ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_RuntimeError ;
 int PyExc_TypeError ;
 int PyExc_ValueError ;
 scalar_t__ PyTuple_CheckExact (int *) ;
 int * PyTuple_GET_ITEM (int *,int) ;
 int PyTuple_GET_SIZE (int *) ;
 int PyTuple_Size (int *) ;
 int * Py_BuildValue (char*,TYPE_1__*,...) ;
 int Py_INCREF (int *) ;
 int Py_XDECREF (int *) ;
 int _borrowed_reference ;
 int _keepdims_converter ;
 int _new_reference ;
 scalar_t__ _set_out_array (int *,int **) ;
 int _subok_converter ;
 int _wheremask_converter ;
 int * npy_um_str_axes ;
 int * npy_um_str_axis ;
 int * npy_um_str_casting ;
 int * npy_um_str_dtype ;
 int * npy_um_str_extobj ;
 int * npy_um_str_keepdims ;
 int * npy_um_str_order ;
 int * npy_um_str_out ;
 int * npy_um_str_sig ;
 int * npy_um_str_signature ;
 int * npy_um_str_subok ;
 int * npy_um_str_where ;
 scalar_t__ parse_ufunc_keywords (TYPE_1__*,int *,int **,int ,int **,int ,int **,int ,int **,int ,int **,int ,int*,int ,int *,int ,int *,int ,int **,int ,int*,int ,int **,int ,int **,int ,int **) ;

__attribute__((used)) static int
get_ufunc_arguments(PyUFuncObject *ufunc,
                    PyObject *args, PyObject *kwds,
                    PyArrayObject **out_op,
                    NPY_ORDER *out_order,
                    NPY_CASTING *out_casting,
                    PyObject **out_extobj,
                    PyObject **out_typetup,
                    int *out_subok,
                    PyArrayObject **out_wheremask,
                    PyObject **out_axes,
                    PyObject **out_axis,
                    int *out_keepdims)
{
    int i, nargs;
    int nin = ufunc->nin;
    int nout = ufunc->nout;
    int nop = ufunc->nargs;
    PyObject *obj, *context;
    PyArray_Descr *dtype = ((void*)0);




    for (i = 0; i < nop; i++) {
        out_op[i] = ((void*)0);
    }
    *out_extobj = ((void*)0);
    *out_typetup = ((void*)0);
    if (out_axes != ((void*)0)) {
        *out_axes = ((void*)0);
    }
    if (out_axis != ((void*)0)) {
        *out_axis = ((void*)0);
    }
    if (out_wheremask != ((void*)0)) {
        *out_wheremask = ((void*)0);
    }


    nargs = PyTuple_Size(args);
    if ((nargs < nin) || (nargs > nop)) {
        PyErr_SetString(PyExc_ValueError, "invalid number of arguments");
        return -1;
    }


    for (i = 0; i < nin; ++i) {
        obj = PyTuple_GET_ITEM(args, i);

        if (PyArray_Check(obj)) {
            PyArrayObject *obj_a = (PyArrayObject *)obj;
            out_op[i] = (PyArrayObject *)PyArray_FromArray(obj_a, ((void*)0), 0);
        }
        else {
            if (!PyArray_IsScalar(obj, Generic)) {




                context = Py_BuildValue("OOi", ufunc, args, i);
                if (context == ((void*)0)) {
                    goto fail;
                }
            }
            else {
                context = ((void*)0);
            }
            out_op[i] = (PyArrayObject *)PyArray_FromAny(obj,
                                    ((void*)0), 0, 0, 0, context);
            Py_XDECREF(context);
        }

        if (out_op[i] == ((void*)0)) {
            goto fail;
        }
    }


    for (i = nin; i < nargs; ++i) {
        obj = PyTuple_GET_ITEM(args, i);
        if (_set_out_array(obj, out_op + i) < 0) {
            goto fail;
        }
    }





    if (kwds) {
        PyObject *out_kwd = ((void*)0);
        PyObject *sig = ((void*)0);
        static PyObject *kwnames[13] = {((void*)0)};
        if (kwnames[0] == ((void*)0)) {
            kwnames[0] = npy_um_str_out;
            kwnames[1] = npy_um_str_where;
            kwnames[2] = npy_um_str_axes;
            kwnames[3] = npy_um_str_axis;
            kwnames[4] = npy_um_str_keepdims;
            kwnames[5] = npy_um_str_casting;
            kwnames[6] = npy_um_str_order;
            kwnames[7] = npy_um_str_dtype;
            kwnames[8] = npy_um_str_subok;
            kwnames[9] = npy_um_str_signature;
            kwnames[10] = npy_um_str_sig;
            kwnames[11] = npy_um_str_extobj;
            kwnames[12] = ((void*)0);
        }




        if (parse_ufunc_keywords(
                ufunc, kwds, kwnames,
                _borrowed_reference, &out_kwd,
                _wheremask_converter, out_wheremask,
                _new_reference, out_axes,
                _new_reference, out_axis,
                _keepdims_converter, out_keepdims,
                PyArray_CastingConverter, out_casting,
                PyArray_OrderConverter, out_order,
                PyArray_DescrConverter2, &dtype,
                _subok_converter, out_subok,
                _new_reference, out_typetup,
                _borrowed_reference, &sig,
                _new_reference, out_extobj) < 0) {
            goto fail;
        }




        if (out_kwd) {





            if (nargs > nin) {
                PyErr_SetString(PyExc_ValueError,
                                "cannot specify 'out' as both a "
                                "positional and keyword argument");
                goto fail;
            }
            if (PyTuple_CheckExact(out_kwd)) {
                if (PyTuple_GET_SIZE(out_kwd) != nout) {
                    PyErr_SetString(PyExc_ValueError,
                                    "The 'out' tuple must have exactly "
                                    "one entry per ufunc output");
                    goto fail;
                }

                for(i = 0; i < nout; ++i) {
                    PyObject *val = PyTuple_GET_ITEM(out_kwd, i);
                    if (_set_out_array(val, out_op+nin+i) < 0) {
                        goto fail;
                    }
                }
            }
            else if (nout == 1) {

                if (_set_out_array(out_kwd, out_op + nin) < 0) {
                    goto fail;
                }
            }
            else {
                PyErr_SetString(PyExc_TypeError,
                        nout > 1 ? "'out' must be a tuple of arrays" :
                                   "'out' must be an array or a tuple with "
                                   "a single array");
                goto fail;
            }
        }




        if (out_axes != ((void*)0) && out_axis != ((void*)0) &&
            *out_axes != ((void*)0) && *out_axis != ((void*)0)) {
            PyErr_SetString(PyExc_TypeError,
                            "cannot specify both 'axis' and 'axes'");
            goto fail;
        }
        if (sig) {
            if (*out_typetup != ((void*)0)) {
                PyErr_SetString(PyExc_ValueError,
                                "cannot specify both 'sig' and 'signature'");
                goto fail;
            }
            Py_INCREF(sig);
            *out_typetup = sig;
        }
        if (dtype) {
            if (*out_typetup != ((void*)0)) {
                PyErr_SetString(PyExc_RuntimeError,
                                "cannot specify both 'signature' and 'dtype'");
                goto fail;
            }

            *out_typetup = Py_BuildValue("(N)", dtype);
        }
    }
    return 0;

fail:
    Py_XDECREF(dtype);
    Py_XDECREF(*out_typetup);
    Py_XDECREF(*out_extobj);
    if (out_wheremask != ((void*)0)) {
        Py_XDECREF(*out_wheremask);
    }
    if (out_axes != ((void*)0)) {
        Py_XDECREF(*out_axes);
    }
    if (out_axis != ((void*)0)) {
        Py_XDECREF(*out_axis);
    }
    for (i = 0; i < nop; i++) {
        Py_XDECREF(out_op[i]);
    }
    return -1;
}
