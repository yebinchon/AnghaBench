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
typedef  scalar_t__ npy_intp ;
typedef  int /*<<< orphan*/  npy_bool ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_ARRAY_CARRAY ; 
 int /*<<< orphan*/  NPY_BEGIN_THREADS_DEF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NPY_BOOL ; 
 int /*<<< orphan*/  NPY_END_THREADS ; 
 int /*<<< orphan*/  NPY_INTP ; 
 int NPY_MAXDIMS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_Type ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int,char*,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC11(PyObject *myBool, PyArrayObject **arrays)
{
    PyArray_Descr *typecode;
    PyArrayObject *ba = NULL, *new = NULL;
    int nd, j;
    npy_intp size, i, count;
    npy_bool *ptr;
    npy_intp coords[NPY_MAXDIMS], dims_m1[NPY_MAXDIMS];
    npy_intp *dptr[NPY_MAXDIMS];
    static npy_intp one = 1;
    NPY_BEGIN_THREADS_DEF;

    typecode=FUNC3(NPY_BOOL);
    ba = (PyArrayObject *)FUNC4(myBool, typecode, 0, 0,
                                          NPY_ARRAY_CARRAY, NULL);
    if (ba == NULL) {
        return -1;
    }
    nd = FUNC5(ba);

    for (j = 0; j < nd; j++) {
        arrays[j] = NULL;
    }
    size = FUNC7(ba);
    ptr = (npy_bool *)FUNC1(ba);

    /*
     * pre-determine how many nonzero entries there are,
     * ignore dimensionality of input as its a CARRAY
     */
    count = FUNC10(1, (char*)ptr, &size, &one);

    /* create count-sized index arrays for each dimension */
    for (j = 0; j < nd; j++) {
        new = (PyArrayObject *)FUNC6(
            &PyArray_Type, FUNC3(NPY_INTP),
            1, &count, NULL, NULL,
            0, NULL);
        if (new == NULL) {
            goto fail;
        }
        arrays[j] = new;

        dptr[j] = (npy_intp *)FUNC1(new);
        coords[j] = 0;
        dims_m1[j] = FUNC2(ba)[j]-1;
    }
    if (count == 0) {
        goto finish;
    }

    /*
     * Loop through the Boolean array  and copy coordinates
     * for non-zero entries
     */
    FUNC0(size);
    for (i = 0; i < size; i++) {
        if (*(ptr++)) {
            for (j = 0; j < nd; j++) {
                *(dptr[j]++) = coords[j];
            }
        }
        /* Borrowed from ITER_NEXT macro */
        for (j = nd - 1; j >= 0; j--) {
            if (coords[j] < dims_m1[j]) {
                coords[j]++;
                break;
            }
            else {
                coords[j] = 0;
            }
        }
    }
    NPY_END_THREADS;

 finish:
    FUNC8(ba);
    return nd;

 fail:
    for (j = 0; j < nd; j++) {
        FUNC9(arrays[j]);
    }
    FUNC9(ba);
    return -1;
}