#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int npy_intp ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  int /*<<< orphan*/  PyArrayIterObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_BEGIN_THREADS_DEF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NPY_END_THREADS ; 
 int NPY_MAXDIMS ; 
 int /*<<< orphan*/  NPY_UBYTE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int*) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static PyObject *
FUNC22(PyObject *input, int axis, char order)
{
    PyArrayObject *inp;
    PyArrayObject *new = NULL;
    PyArrayObject *out = NULL;
    npy_intp outdims[NPY_MAXDIMS];
    int i;
    PyArrayIterObject *it, *ot;
    NPY_BEGIN_THREADS_DEF;

    inp = (PyArrayObject *)FUNC5(input);

    if (inp == NULL) {
        return NULL;
    }
    if (!FUNC6(inp) && !FUNC8(inp)) {
        FUNC17(PyExc_TypeError,
                "Expected an input array of integer or boolean data type");
        FUNC18(inp);
        goto fail;
    }

    new = (PyArrayObject *)FUNC1(inp, &axis, 0);
    FUNC18(inp);
    if (new == NULL) {
        return NULL;
    }

    if (FUNC14(new) == 0) {
        char *optr, *iptr;

        out = (PyArrayObject *)FUNC15(
                FUNC19(new), FUNC4(NPY_UBYTE),
                0, NULL, NULL, NULL,
                0, NULL);
        if (out == NULL) {
            goto fail;
        }
        optr = FUNC2(out);
        iptr = FUNC2(new);
        *optr = 0;
        for (i = 0; i < FUNC9(new); i++) {
            if (*iptr != 0) {
                *optr = 1;
                break;
            }
            iptr++;
        }
        goto finish;
    }


    /* Setup output shape */
    for (i = 0; i < FUNC14(new); i++) {
        outdims[i] = FUNC3(new, i);
    }

    /*
     * Divide axis dimension by 8
     * 8 -> 1, 9 -> 2, 16 -> 2, 17 -> 3 etc..
     */
    outdims[axis] = ((outdims[axis] - 1) >> 3) + 1;

    /* Create output array */
    out = (PyArrayObject *)FUNC15(
            FUNC19(new), FUNC4(NPY_UBYTE),
            FUNC14(new), outdims, NULL, NULL,
            FUNC7(new), NULL);
    if (out == NULL) {
        goto fail;
    }
    /* Setup iterators to iterate over all but given axis */
    it = (PyArrayIterObject *)FUNC13((PyObject *)new, &axis);
    ot = (PyArrayIterObject *)FUNC13((PyObject *)out, &axis);
    if (it == NULL || ot == NULL) {
        FUNC20(it);
        FUNC20(ot);
        goto fail;
    }

    FUNC0(FUNC3(out, axis));
    while (FUNC12(it)) {
        FUNC21(FUNC10(it), FUNC9(new),
                   FUNC3(new, axis), FUNC16(new, axis),
                   FUNC10(ot), FUNC3(out, axis),
                   FUNC16(out, axis), order);
        FUNC11(it);
        FUNC11(ot);
    }
    NPY_END_THREADS;

    FUNC18(it);
    FUNC18(ot);

finish:
    FUNC18(new);
    return (PyObject *)out;

fail:
    FUNC20(new);
    FUNC20(out);
    return NULL;
}