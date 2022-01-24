#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * out; int /*<<< orphan*/ * in; } ;
typedef  TYPE_1__ ufunc_full_args ;
typedef  int npy_intp ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  npy_um_str_out ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(
        ufunc_full_args *full_args,
        npy_intp nin, npy_intp nout,
        PyObject *args, PyObject *kwds)
{
    PyObject *out_kwd = NULL;
    npy_intp nargs = FUNC3(args);
    npy_intp i;

    /* This should have been checked by the caller */
    FUNC10(nin <= nargs && nargs <= nin + nout);

    /* Initialize so we can XDECREF safely */
    full_args->in = NULL;
    full_args->out = NULL;

    /* Get the input arguments*/
    full_args->in = FUNC4(args, 0, nin);
    if (full_args->in == NULL) {
        goto fail;
    }

    /* Look for output keyword arguments */
    out_kwd = kwds ? FUNC0(kwds, npy_um_str_out) : NULL;

    if (out_kwd != NULL) {
        FUNC10(nargs == nin);
        if (out_kwd == Py_None) {
            return 0;
        }
        else if (FUNC1(out_kwd)) {
            FUNC10(FUNC3(out_kwd) == nout);
            if (FUNC11(out_kwd)) {
                return 0;
            }
            FUNC8(out_kwd);
            full_args->out = out_kwd;
            return 0;
        }
        else {
            /* A single argument x is promoted to (x, None, None ...) */
            full_args->out = FUNC5(nout);
            if (full_args->out == NULL) {
                goto fail;
            }
            FUNC8(out_kwd);
            FUNC6(full_args->out, 0, out_kwd);
            for (i = 1; i < nout; ++i) {
                FUNC8(Py_None);
                FUNC6(full_args->out, i, Py_None);
            }
            return 0;
        }
    }

    /* No outputs in kwargs; if also none in args, we're done */
    if (nargs == nin) {
        return 0;
    }
    /* copy across positional output arguments, adding trailing Nones */
    full_args->out = FUNC5(nout);
    if (full_args->out == NULL) {
        goto fail;
    }
    for (i = nin; i < nargs; ++i) {
        PyObject *item = FUNC2(args, i);
        FUNC8(item);
        FUNC6(full_args->out, i - nin, item);
    }
    for (i = nargs; i < nin + nout; ++i) {
        FUNC8(Py_None);
        FUNC6(full_args->out, i - nin, Py_None);
    }

    /* don't return a tuple full of None */
    if (FUNC11(full_args->out)) {
        FUNC7(full_args->out);
        full_args->out = NULL;
    }
    return 0;

fail:
    FUNC9(full_args->in);
    FUNC9(full_args->out);
    return -1;
}