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
typedef  int npy_uint8 ;
typedef  int /*<<< orphan*/  npy_uint64 ;
typedef  int npy_intp ;
struct TYPE_3__ {int member_1; int* ptr; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Dims ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  int /*<<< orphan*/  PyArrayIterObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_BEGIN_THREADS_DEF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NPY_CORDER ; 
 int /*<<< orphan*/  NPY_END_THREADS ; 
 int NPY_MAXDIMS ; 
 scalar_t__ NPY_UBYTE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC26(PyObject *input, int axis, PyObject *count_obj, char order)
{
    static int unpack_init = 0;
    /*
     * lookuptable for bitorder big as it has been around longer
     * bitorder little is handled via byteswapping in the loop
     */
    static union {
        npy_uint8  bytes[8];
        npy_uint64 uint64;
    } unpack_lookup_big[256];
    PyArrayObject *inp;
    PyArrayObject *new = NULL;
    PyArrayObject *out = NULL;
    npy_intp outdims[NPY_MAXDIMS];
    int i;
    PyArrayIterObject *it, *ot;
    npy_intp count, in_n, in_tail, out_pad, in_stride, out_stride;
    NPY_BEGIN_THREADS_DEF;

    inp = (PyArrayObject *)FUNC4(input);

    if (inp == NULL) {
        return NULL;
    }
    if (FUNC16(inp) != NPY_UBYTE) {
        FUNC18(PyExc_TypeError,
                "Expected an input array of unsigned byte data type");
        FUNC19(inp);
        goto fail;
    }

    new = (PyArrayObject *)FUNC1(inp, &axis, 0);
    FUNC19(inp);
    if (new == NULL) {
        return NULL;
    }

    if (FUNC10(new) == 0) {
        /* Handle 0-d array by converting it to a 1-d array */
        PyArrayObject *temp;
        PyArray_Dims newdim = {NULL, 1};
        npy_intp shape = 1;

        newdim.ptr = &shape;
        temp = (PyArrayObject *)FUNC12(new, &newdim, NPY_CORDER);
        FUNC19(new);
        if (temp == NULL) {
            return NULL;
        }
        new = temp;
    }

    /* Setup output shape */
    for (i = 0; i < FUNC10(new); i++) {
        outdims[i] = FUNC2(new, i);
    }

    /* Multiply axis dimension by 8 */
    outdims[axis] *= 8;
    if (count_obj != Py_None) {
        count = FUNC13(count_obj);
        if (FUNC22(count)) {
            goto fail;
        }
        if (count < 0) {
            outdims[axis] += count;
            if (outdims[axis] < 0) {
                FUNC17(PyExc_ValueError,
                             "-count larger than number of elements");
                goto fail;
            }
        }
        else {
            outdims[axis] = count;
        }
    }

    /* Create output array */
    out = (PyArrayObject *)FUNC11(
            FUNC20(new), FUNC3(NPY_UBYTE),
            FUNC10(new), outdims, NULL, NULL,
            FUNC5(new), NULL);
    if (out == NULL) {
        goto fail;
    }

    /* Setup iterators to iterate over all but given axis */
    it = (PyArrayIterObject *)FUNC9((PyObject *)new, &axis);
    ot = (PyArrayIterObject *)FUNC9((PyObject *)out, &axis);
    if (it == NULL || ot == NULL) {
        FUNC21(it);
        FUNC21(ot);
        goto fail;
    }

    /*
     * setup lookup table under GIL, 256 8 byte blocks representing 8 bits
     * expanded to 1/0 bytes
     */
    if (unpack_init == 0) {
        npy_intp j;
        for (j=0; j < 256; j++) {
            npy_intp k;
            for (k=0; k < 8; k++) {
                npy_uint8 v = (j & (1 << k)) == (1 << k);
                unpack_lookup_big[j].bytes[7 - k] = v;
            }
        }
        unpack_init = 1;
    }

    count = FUNC2(new, axis) * 8;
    if (outdims[axis] > count) {
        in_n = count / 8;
        in_tail = 0;
        out_pad = outdims[axis] - count;
    }
    else {
        in_n = outdims[axis] / 8;
        in_tail = outdims[axis] % 8;
        out_pad = 0;
    }

    in_stride = FUNC14(new, axis);
    out_stride = FUNC14(out, axis);

    FUNC0(FUNC15((PyObject *)out) / 8);

    while (FUNC8(it)) {
        npy_intp index;
        unsigned const char *inptr = FUNC6(it);
        char *outptr = FUNC6(ot);

        if (out_stride == 1) {
            /* for unity stride we can just copy out of the lookup table */
            if (order == 'b') {
                for (index = 0; index < in_n; index++) {
                    npy_uint64 v = unpack_lookup_big[*inptr].uint64;
                    FUNC23(outptr, &v, 8);
                    outptr += 8;
                    inptr += in_stride;
                }
            }
            else {
                for (index = 0; index < in_n; index++) {
                    npy_uint64 v = unpack_lookup_big[*inptr].uint64;
                    if (order != 'b') {
                        v = FUNC25(v);
                    }
                    FUNC23(outptr, &v, 8);
                    outptr += 8;
                    inptr += in_stride;
                }
            }
            /* Clean up the tail portion */
            if (in_tail) {
                npy_uint64 v = unpack_lookup_big[*inptr].uint64;
                if (order != 'b') {
                    v = FUNC25(v);
                }
                FUNC23(outptr, &v, in_tail);
            }
            /* Add padding */
            else if (out_pad) {
                FUNC24(outptr, 0, out_pad);
            }
        }
        else {
            if (order == 'b') {
                for (index = 0; index < in_n; index++) {
                    for (i = 0; i < 8; i++) {
                        *outptr = ((*inptr & (128 >> i)) != 0);
                        outptr += out_stride;
                    }
                    inptr += in_stride;
                }
                /* Clean up the tail portion */
                for (i = 0; i < in_tail; i++) {
                    *outptr = ((*inptr & (128 >> i)) != 0);
                    outptr += out_stride;
                }
            }
            else {
                for (index = 0; index < in_n; index++) {
                    for (i = 0; i < 8; i++) {
                        *outptr = ((*inptr & (1 << i)) != 0);
                        outptr += out_stride;
                    }
                    inptr += in_stride;
                }
                /* Clean up the tail portion */
                for (i = 0; i < in_tail; i++) {
                    *outptr = ((*inptr & (1 << i)) != 0);
                    outptr += out_stride;
                }
            }
            /* Add padding */
            for (index = 0; index < out_pad; index++) {
                *outptr = 0;
                outptr += out_stride;
            }
        }

        FUNC7(it);
        FUNC7(ot);
    }
    NPY_END_THREADS;

    FUNC19(it);
    FUNC19(ot);

    FUNC19(new);
    return (PyObject *)out;

fail:
    FUNC21(new);
    FUNC21(out);
    return NULL;
}