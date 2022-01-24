#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int npy_intp ;
struct TYPE_7__ {int two; int nd; int* shape; } ;
struct TYPE_6__ {int ndim; int* shape; int len; } ;
typedef  TYPE_1__ Py_buffer ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  TYPE_2__ PyArrayInterface ;

/* Variables and functions */
 int /*<<< orphan*/  Generic ; 
 int NPY_MAXDIMS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int PyBUF_ND ; 
 int PyBUF_SIMPLE ; 
 int PyBUF_STRIDES ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_BufferError ; 
 int /*<<< orphan*/  PyExc_KeyError ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int) ; 
 int FUNC26 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC31(PyObject *obj, int *maxndim, npy_intp *d, int check_it,
                                    int stop_at_string, int stop_at_tuple,
                                    int *out_is_object)
{
    PyObject *e;
    npy_intp n, i;
    Py_buffer buffer_view;
    PyObject * seq;

    if (*maxndim == 0) {
        return 0;
    }

    /* obj is an Array */
    if (FUNC2(obj)) {
        PyArrayObject *arr = (PyArrayObject *)obj;

        if (FUNC6(arr) < *maxndim) {
            *maxndim = FUNC6(arr);
        }

        for (i=0; i<*maxndim; i++) {
            d[i] = FUNC3(arr,i);
        }
        return 0;
    }

    /* obj is a Scalar */
    if (FUNC4(obj, Generic)) {
        *maxndim = 0;
        return 0;
    }

    /* obj is not a Sequence */
    if (!FUNC18(obj) ||
            FUNC22(obj) < 0) {
        *maxndim = 0;
        FUNC11();
        return 0;
    }

    /* obj is a String */
    if (FUNC23(obj) ||
#if defined(NPY_PY3K)
#else
            FUNC7(obj) ||
#endif
            FUNC27(obj)) {
        if (stop_at_string) {
            *maxndim = 0;
        }
        else {
            d[0] = FUNC22(obj);
            *maxndim = 1;
        }
        return 0;
    }

    /* obj is a Tuple, but tuples aren't expanded */
    if (stop_at_tuple && FUNC24(obj)) {
        *maxndim = 0;
        return 0;
    }

    /* obj is a PEP 3118 buffer */
    /* PEP 3118 buffer interface */
    if (FUNC16(obj) == 1) {
        FUNC30(&buffer_view, 0, sizeof(Py_buffer));
        if (FUNC17(obj, &buffer_view,
                    PyBUF_STRIDES|PyBUF_SIMPLE) == 0 ||
                FUNC17(obj, &buffer_view,
                    PyBUF_ND|PyBUF_SIMPLE) == 0) {
            int nd = buffer_view.ndim;

            if (nd < *maxndim) {
                *maxndim = nd;
            }
            for (i = 0; i < *maxndim; i++) {
                d[i] = buffer_view.shape[i];
            }
            FUNC8(&buffer_view);
            FUNC29(obj);
            return 0;
        }
        else if (FUNC13()) {
            if (FUNC12(PyExc_BufferError) ||
                    FUNC12(PyExc_TypeError)) {
                FUNC11();
            } else {
                return -1;
            }
        }
        else if (FUNC17(obj, &buffer_view, PyBUF_SIMPLE) == 0) {
            d[0] = buffer_view.len;
            *maxndim = 1;
            FUNC8(&buffer_view);
            FUNC29(obj);
            return 0;
        }
        else if (FUNC13()) {
            if (FUNC12(PyExc_BufferError) ||
                    FUNC12(PyExc_TypeError)) {
                FUNC11();
            } else {
                return -1;
            }
        }
    }

    /* obj has the __array_struct__ interface */
    e = FUNC5(obj, "__array_struct__");
    if (e != NULL) {
        int nd = -1;

        if (FUNC1(e)) {
            PyArrayInterface *inter;
            inter = (PyArrayInterface *)FUNC0(e);
            if (inter->two == 2) {
                nd = inter->nd;
                if (nd >= 0) {
                    if (nd < *maxndim) {
                        *maxndim = nd;
                    }
                    for (i=0; i<*maxndim; i++) {
                        d[i] = inter->shape[i];
                    }
                }
            }
        }
        FUNC28(e);
        if (nd >= 0) {
            return 0;
        }
    }
    else if (FUNC13()) {
        FUNC11(); /* TODO[gh-14801]: propagate crashes during attribute access? */
    }


    /* obj has the __array_interface__ interface */
    e = FUNC5(obj, "__array_interface__");
    if (e != NULL) {
        int nd = -1;
        if (FUNC9(e)) {
            PyObject *new;
            new = FUNC10(e, "shape");
            if (new && FUNC24(new)) {
                nd = FUNC26(new);
                if (nd < *maxndim) {
                    *maxndim = nd;
                }
                for (i=0; i<*maxndim; i++) {
                    d[i] = FUNC15(FUNC25(new, i));
                    if (d[i] < 0) {
                        FUNC14(PyExc_RuntimeError,
                                "Invalid shape in __array_interface__");
                        FUNC28(e);
                        return -1;
                    }
                }
            }
        }
        FUNC28(e);
        if (nd >= 0) {
            return 0;
        }
    }
    else if (FUNC13()) {
        FUNC11(); /* TODO[gh-14801]: propagate crashes during attribute access? */
    }

    seq = FUNC19(obj, "Could not convert object to sequence");
    if (seq == NULL) {
        /*
         * PySequence_Check detects whether an old type object is a
         * sequence by the presence of the __getitem__ attribute, and
         * for new type objects that aren't dictionaries by the
         * presence of the __len__ attribute as well. In either case it
         * is possible to have an object that tests as a sequence but
         * doesn't behave as a sequence and consequently, the
         * PySequence_GetItem call can fail. When that happens and the
         * object looks like a dictionary, we truncate the dimensions
         * and set the object creation flag, otherwise we pass the
         * error back up the call chain.
         */
        if (FUNC12(PyExc_KeyError)) {
            FUNC11();
            *maxndim = 0;
            *out_is_object = 1;
            return 0;
        }
        else {
            return -1;
        }
    }
    n = FUNC21(seq);

    d[0] = n;

    /* 1-dimensional sequence */
    if (n == 0 || *maxndim == 1) {
        *maxndim = 1;
        FUNC28(seq);
        return 0;
    }
    else {
        int all_elems_maxndim = *maxndim - 1;
        npy_intp *all_elems_d = d + 1;
        int all_dimensions_match = 1;

        /* Get the dimensions of the first item as a baseline */
        PyObject *first = FUNC20(seq, 0);
        if (FUNC31(
                first, &all_elems_maxndim, all_elems_d, check_it,
                stop_at_string, stop_at_tuple, out_is_object) < 0) {
            FUNC28(seq);
            return -1;
        }

        /* Compare the dimensions of all the remaining items */
        for (i = 1; i < n; ++i) {
            int j;
            int elem_maxndim = *maxndim - 1;
            npy_intp elem_d[NPY_MAXDIMS];

            PyObject *elem = FUNC20(seq, i);
            if (FUNC31(
                    elem, &elem_maxndim, elem_d, check_it,
                    stop_at_string, stop_at_tuple, out_is_object) < 0) {
                FUNC28(seq);
                return -1;
            }

            /* Find the number of left-dimensions which match, j */
            for (j = 0; j < elem_maxndim && j < all_elems_maxndim; ++j) {
                if (elem_d[j] != all_elems_d[j]) {
                    break;
                }
            }
            if (j != elem_maxndim || j != all_elems_maxndim) {
                all_dimensions_match = 0;
            }
            all_elems_maxndim = j;
        }
        *maxndim = all_elems_maxndim + 1;
        if (!all_dimensions_match) {
            /* typically results in an array containing variable-length lists */
            *out_is_object = 1;
        }
    }

    FUNC28(seq);

    return 0;
}