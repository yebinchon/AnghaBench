#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ npy_longlong ;
typedef  int npy_intp ;
struct TYPE_15__ {int len; int flags; int /*<<< orphan*/ * base; int /*<<< orphan*/ * ptr; } ;
struct TYPE_14__ {int elsize; } ;
struct TYPE_13__ {int* ptr; int len; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  PyTypeObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Dims ;
typedef  TYPE_2__ PyArray_Descr ;
typedef  TYPE_3__ PyArray_Chunk ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  scalar_t__ NPY_ORDER ;

/* Variables and functions */
 int NPY_ARRAY_F_CONTIGUOUS ; 
 scalar_t__ NPY_CORDER ; 
 int /*<<< orphan*/  NPY_DEFAULT_TYPE ; 
 scalar_t__ NPY_FORTRANORDER ; 
 int /*<<< orphan*/  NPY_ITEM_HASOBJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ ,TYPE_3__*,scalar_t__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  PyArray_BufferConverter ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int*,int*) ; 
 int /*<<< orphan*/  PyArray_DescrConverter ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyArray_IntpConverter ; 
 int FUNC4 (int*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int,int*,int*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PyArray_OrderConverter ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  Py_None ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__) ; 

__attribute__((used)) static PyObject *
FUNC11(PyTypeObject *subtype, PyObject *args, PyObject *kwds)
{
    static char *kwlist[] = {"shape", "dtype", "buffer", "offset", "strides",
                             "order", NULL};
    PyArray_Descr *descr = NULL;
    int itemsize;
    PyArray_Dims dims = {NULL, 0};
    PyArray_Dims strides = {NULL, 0};
    PyArray_Chunk buffer;
    npy_longlong offset = 0;
    NPY_ORDER order = NPY_CORDER;
    int is_f_order = 0;
    PyArrayObject *ret;

    buffer.ptr = NULL;
    /*
     * Usually called with shape and type but can also be called with buffer,
     * strides, and swapped info For now, let's just use this to create an
     * empty, contiguous array of a specific type and shape.
     */
    if (!FUNC0(args, kwds, "O&|O&O&LO&O&:ndarray",
                                     kwlist, PyArray_IntpConverter,
                                     &dims,
                                     PyArray_DescrConverter,
                                     &descr,
                                     PyArray_BufferConverter,
                                     &buffer,
                                     &offset,
                                     &PyArray_IntpConverter,
                                     &strides,
                                     &PyArray_OrderConverter,
                                     &order)) {
        goto fail;
    }
    if (order == NPY_FORTRANORDER) {
        is_f_order = 1;
    }
    if (descr == NULL) {
        descr = FUNC2(NPY_DEFAULT_TYPE);
    }

    itemsize = descr->elsize;

    if (strides.ptr != NULL) {
        npy_intp nb, off;
        if (strides.len != dims.len) {
            FUNC8(PyExc_ValueError,
                            "strides, if given, must be "   \
                            "the same length as shape");
            goto fail;
        }

        if (buffer.ptr == NULL) {
            nb = 0;
            off = 0;
        }
        else {
            nb = buffer.len;
            off = (npy_intp) offset;
        }


        if (!FUNC1(itemsize, dims.len,
                                  nb, off,
                                  dims.ptr, strides.ptr)) {
            FUNC8(PyExc_ValueError,
                            "strides is incompatible "      \
                            "with shape of requested "      \
                            "array and size of buffer");
            goto fail;
        }
    }

    if (buffer.ptr == NULL) {
        ret = (PyArrayObject *)
            FUNC5(subtype, descr,
                                     (int)dims.len,
                                     dims.ptr,
                                     strides.ptr, NULL, is_f_order, NULL, NULL,
                                     0, 1);
        if (ret == NULL) {
            descr = NULL;
            goto fail;
        }
        if (FUNC6(descr, NPY_ITEM_HASOBJECT)) {
            /* place Py_None in object positions */
            FUNC3(ret, Py_None);
            if (FUNC7()) {
                descr = NULL;
                goto fail;
            }
        }
    }
    else {
        /* buffer given -- use it */
        if (dims.len == 1 && dims.ptr[0] == -1) {
            dims.ptr[0] = (buffer.len-(npy_intp)offset) / itemsize;
        }
        else if ((strides.ptr == NULL) &&
                 (buffer.len < (offset + (((npy_intp)itemsize)*
                                          FUNC4(dims.ptr,
                                                               dims.len))))) {
            FUNC8(PyExc_TypeError,
                            "buffer is too small for "      \
                            "requested array");
            goto fail;
        }
        /* get writeable and aligned */
        if (is_f_order) {
            buffer.flags |= NPY_ARRAY_F_CONTIGUOUS;
        }
        ret = (PyArrayObject *)FUNC5(
                subtype, descr,
                dims.len, dims.ptr, strides.ptr, offset + (char *)buffer.ptr,
                buffer.flags, NULL, buffer.base,
                0, 1);
        if (ret == NULL) {
            descr = NULL;
            goto fail;
        }
    }

    FUNC10(dims);
    FUNC10(strides);
    return (PyObject *)ret;

 fail:
    FUNC9(descr);
    FUNC10(dims);
    FUNC10(strides);
    return NULL;
}