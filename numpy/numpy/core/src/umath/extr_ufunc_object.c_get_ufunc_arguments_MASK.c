#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nin; int nout; int nargs; } ;
typedef  TYPE_1__ PyUFuncObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  int /*<<< orphan*/  NPY_ORDER ;
typedef  int /*<<< orphan*/  NPY_CASTING ;

/* Variables and functions */
 int /*<<< orphan*/  Generic ; 
 int /*<<< orphan*/  PyArray_CastingConverter ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_DescrConverter2 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyArray_OrderConverter ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,TYPE_1__*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _borrowed_reference ; 
 int /*<<< orphan*/  _keepdims_converter ; 
 int /*<<< orphan*/  _new_reference ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  _subok_converter ; 
 int /*<<< orphan*/  _wheremask_converter ; 
 int /*<<< orphan*/ * npy_um_str_axes ; 
 int /*<<< orphan*/ * npy_um_str_axis ; 
 int /*<<< orphan*/ * npy_um_str_casting ; 
 int /*<<< orphan*/ * npy_um_str_dtype ; 
 int /*<<< orphan*/ * npy_um_str_extobj ; 
 int /*<<< orphan*/ * npy_um_str_keepdims ; 
 int /*<<< orphan*/ * npy_um_str_order ; 
 int /*<<< orphan*/ * npy_um_str_out ; 
 int /*<<< orphan*/ * npy_um_str_sig ; 
 int /*<<< orphan*/ * npy_um_str_signature ; 
 int /*<<< orphan*/ * npy_um_str_subok ; 
 int /*<<< orphan*/ * npy_um_str_where ; 
 scalar_t__ FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC14(PyUFuncObject *ufunc,
                    PyObject *args, PyObject *kwds,
                    PyArrayObject **out_op,
                    NPY_ORDER *out_order,
                    NPY_CASTING *out_casting,
                    PyObject **out_extobj,
                    PyObject **out_typetup,  /* type: Tuple[np.dtype] */
                    int *out_subok,  /* bool */
                    PyArrayObject **out_wheremask, /* PyArray of bool */
                    PyObject **out_axes,  /* type: List[Tuple[T]] */
                    PyObject **out_axis,  /* type: T */
                    int *out_keepdims)  /* bool */
{
    int i, nargs;
    int nin = ufunc->nin;
    int nout = ufunc->nout;
    int nop = ufunc->nargs;
    PyObject *obj, *context;
    PyArray_Descr *dtype = NULL;
    /*
     * Initialize output objects so caller knows when outputs and optional
     * arguments are set (also means we can safely XDECREF on failure).
     */
    for (i = 0; i < nop; i++) {
        out_op[i] = NULL;
    }
    *out_extobj = NULL;
    *out_typetup = NULL;
    if (out_axes != NULL) {
        *out_axes = NULL;
    }
    if (out_axis != NULL) {
        *out_axis = NULL;
    }
    if (out_wheremask != NULL) {
        *out_wheremask = NULL;
    }

    /* Check number of arguments */
    nargs = FUNC8(args);
    if ((nargs < nin) || (nargs > nop)) {
        FUNC4(PyExc_ValueError, "invalid number of arguments");
        return -1;
    }

    /* Get input arguments */
    for (i = 0; i < nin; ++i) {
        obj = FUNC6(args, i);

        if (FUNC0(obj)) {
            PyArrayObject *obj_a = (PyArrayObject *)obj;
            out_op[i] = (PyArrayObject *)FUNC2(obj_a, NULL, 0);
        }
        else {
            if (!FUNC3(obj, Generic)) {
                /*
                 * TODO: There should be a comment here explaining what
                 *       context does.
                 */
                context = FUNC9("OOi", ufunc, args, i);
                if (context == NULL) {
                    goto fail;
                }
            }
            else {
                context = NULL;
            }
            out_op[i] = (PyArrayObject *)FUNC1(obj,
                                    NULL, 0, 0, 0, context);
            FUNC11(context);
        }

        if (out_op[i] == NULL) {
            goto fail;
        }
    }

    /* Get positional output arguments */
    for (i = nin; i < nargs; ++i) {
        obj = FUNC6(args, i);
        if (FUNC12(obj, out_op + i) < 0) {
            goto fail;
        }
    }

    /*
     * If keywords are present, get keyword output and other arguments.
     * Raise an error if anything else is present in the keyword dictionary.
     */
    if (kwds) {
        PyObject *out_kwd = NULL;
        PyObject *sig = NULL;
        static PyObject *kwnames[13] = {NULL};
        if (kwnames[0] == NULL) {
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
            kwnames[12] = NULL;  /* sentinel */
        }
        /*
         * Parse using converters to calculate outputs
         * (NULL outputs are treated as indicating a keyword is not allowed).
         */
        if (FUNC13(
                ufunc, kwds, kwnames,
                _borrowed_reference, &out_kwd,
                _wheremask_converter, out_wheremask,  /* new reference */
                _new_reference, out_axes,
                _new_reference, out_axis,
                _keepdims_converter, out_keepdims,
                PyArray_CastingConverter, out_casting,
                PyArray_OrderConverter, out_order,
                PyArray_DescrConverter2, &dtype,   /* new reference */
                _subok_converter, out_subok,
                _new_reference, out_typetup,
                _borrowed_reference, &sig,
                _new_reference, out_extobj) < 0) {
            goto fail;
        }
        /*
         * Check that outputs were not passed as positional as well,
         * and that they are either None or an array.
         */
        if (out_kwd) {  /* borrowed reference */
            /*
             * Output arrays are generally specified as a tuple of arrays
             * and None, but may be a single array or None for ufuncs
             * with a single output.
             */
            if (nargs > nin) {
                FUNC4(PyExc_ValueError,
                                "cannot specify 'out' as both a "
                                "positional and keyword argument");
                goto fail;
            }
            if (FUNC5(out_kwd)) {
                if (FUNC7(out_kwd) != nout) {
                    FUNC4(PyExc_ValueError,
                                    "The 'out' tuple must have exactly "
                                    "one entry per ufunc output");
                    goto fail;
                }
                /* 'out' must be a tuple of arrays and Nones */
                for(i = 0; i < nout; ++i) {
                    PyObject *val = FUNC6(out_kwd, i);
                    if (FUNC12(val, out_op+nin+i) < 0) {
                        goto fail;
                    }
                }
            }
            else if (nout == 1) {
                /* Can be an array if it only has one output */
                if (FUNC12(out_kwd, out_op + nin) < 0) {
                    goto fail;
                }
            }
            else {
                FUNC4(PyExc_TypeError,
                        nout > 1 ? "'out' must be a tuple of arrays" :
                                   "'out' must be an array or a tuple with "
                                   "a single array");
                goto fail;
            }
        }
        /*
         * Check we did not get both axis and axes, or multiple ways
         * to define a signature.
         */
        if (out_axes != NULL && out_axis != NULL &&
            *out_axes != NULL && *out_axis != NULL) {
            FUNC4(PyExc_TypeError,
                            "cannot specify both 'axis' and 'axes'");
            goto fail;
        }
        if (sig) {  /* borrowed reference */
            if (*out_typetup != NULL) {
                FUNC4(PyExc_ValueError,
                                "cannot specify both 'sig' and 'signature'");
                goto fail;
            }
            FUNC10(sig);
            *out_typetup = sig;
        }
        if (dtype) {  /* new reference */
            if (*out_typetup != NULL) {
                FUNC4(PyExc_RuntimeError,
                                "cannot specify both 'signature' and 'dtype'");
                goto fail;
            }
            /* Note: "N" uses the reference */
            *out_typetup = FUNC9("(N)", dtype);
        }
    }
    return 0;

fail:
    FUNC11(dtype);
    FUNC11(*out_typetup);
    FUNC11(*out_extobj);
    if (out_wheremask != NULL) {
        FUNC11(*out_wheremask);
    }
    if (out_axes != NULL) {
        FUNC11(*out_axes);
    }
    if (out_axis != NULL) {
        FUNC11(*out_axis);
    }
    for (i = 0; i < nop; i++) {
        FUNC11(out_op[i]);
    }
    return -1;
}