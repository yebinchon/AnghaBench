#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
typedef  int npy_intp ;
struct TYPE_18__ {scalar_t__ type_num; int elsize; TYPE_10__* subarray; struct TYPE_18__* names; struct TYPE_18__* fields; int /*<<< orphan*/  alignment; int /*<<< orphan*/  flags; scalar_t__ metadata; } ;
struct TYPE_17__ {int member_1; int len; int* ptr; int /*<<< orphan*/ * member_0; } ;
struct TYPE_16__ {int /*<<< orphan*/ * shape; TYPE_2__* base; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Dims ;
typedef  TYPE_2__ PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArray_ArrayDescr ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int NPY_MAXDIMS ; 
 int NPY_MAX_INT ; 
 scalar_t__ NPY_UNICODE ; 
 int /*<<< orphan*/  NPY_VOID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC6 (int*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_10__* FUNC8 (int) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC16 (long) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 TYPE_2__* FUNC25 (TYPE_2__*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__) ; 
 int FUNC28 (int*,int,int) ; 

__attribute__((used)) static PyArray_Descr *
FUNC29(PyObject *obj, int align)
{
    PyArray_Descr *type, *res;
    PyObject *val;
    int errflag;

    if (FUNC20(obj) != 2) {
        return NULL;
    }
    if (align) {
        if (!FUNC2(FUNC19(obj, 0), &type)) {
            return NULL;
        }
    }
    else {
        if (!FUNC3(FUNC19(obj, 0), &type)) {
            return NULL;
        }
    }    
    val = FUNC19(obj,1);
    /* try to interpret next item as a type */
    res = FUNC25(type, val, &errflag);
    if (res || errflag) {
        FUNC23(type);
        return res;
    }
    FUNC13();
    /*
     * We get here if res was NULL but errflag wasn't set
     * --- i.e. the conversion to a data-descr failed in _use_inherit
     */
    if (FUNC9(type)) {
        /* interpret next item as a typesize */
        int itemsize = FUNC7(FUNC19(obj,1));

        if (FUNC26(itemsize)) {
            FUNC15(PyExc_ValueError,
                    "invalid itemsize in generic type tuple");
            FUNC23(type);
            return NULL;
        }
        FUNC1(type);
        if (type == NULL) {
            return NULL;
        }
        if (type->type_num == NPY_UNICODE) {
            type->elsize = itemsize << 2;
        }
        else {
            type->elsize = itemsize;
        }
        return type;
    }
    else if (type->metadata && (FUNC11(val) || FUNC10(val))) {
        /* Assume it's a metadata dictionary */
        if (FUNC12(type->metadata, val, 0) == -1) {
            FUNC23(type);
            return NULL;
        }
        return type;
    }
    else {
        /*
         * interpret next item as shape (if it's a tuple)
         * and reset the type to NPY_VOID with
         * a new fields attribute.
         */
        PyArray_Dims shape = {NULL, -1};
        PyArray_Descr *newdescr = NULL;
        npy_intp items;
        int i, overflowed;
        int nbytes;

        if (!(FUNC5(val, &shape)) || (shape.len > NPY_MAXDIMS)) {
            FUNC15(PyExc_ValueError,
                    "invalid shape in fixed-type tuple.");
            goto fail;
        }
        /* if (type, ()) was given it is equivalent to type... */
        if (shape.len == 0 && FUNC18(val)) {
            FUNC27(shape);
            return type;
        }
        /* (type, 1) use to be equivalent to type, but is deprecated */
        if (shape.len == 1
                && shape.ptr[0] == 1
                && FUNC17(val)) {
            /* 2019-05-20, 1.17 */
            if (FUNC0(
                        "Passing (type, 1) or '1type' as a synonym of type is "
                        "deprecated; in a future version of numpy, it will be "
                        "understood as (type, (1,)) / '(1,)type'.") < 0) {
                goto fail;
            }
            FUNC27(shape);
            return type;
        }

        /* validate and set shape */
        for (i=0; i < shape.len; i++) {
            if (shape.ptr[i] < 0) {
                FUNC15(PyExc_ValueError,
                                "invalid shape in fixed-type tuple: "
                                "dimension smaller then zero.");
                goto fail;
            }
            if (shape.ptr[i] > NPY_MAX_INT) {
                FUNC15(PyExc_ValueError,
                                "invalid shape in fixed-type tuple: "
                                "dimension does not fit into a C int.");
                goto fail;
            }
        }
        items = FUNC6(shape.ptr, shape.len);
        if (items < 0 || items > NPY_MAX_INT) {
            overflowed = 1;
        }
        else {
            overflowed = FUNC28(
                &nbytes, type->elsize, (int) items);
        }
        if (overflowed) {
            FUNC15(PyExc_ValueError,
                            "invalid shape in fixed-type tuple: dtype size in "
                            "bytes must fit into a C int.");
            goto fail;
        }
        newdescr = FUNC4(NPY_VOID);
        if (newdescr == NULL) {
            goto fail;
        }
        newdescr->elsize = nbytes;
        newdescr->subarray = FUNC8(sizeof(PyArray_ArrayDescr));
        if (newdescr->subarray == NULL) {
            FUNC14();
            goto fail;
        }
        newdescr->flags = type->flags;
        newdescr->alignment = type->alignment;
        newdescr->subarray->base = type;
        type = NULL;
        FUNC24(newdescr->fields);
        FUNC24(newdescr->names);
        newdescr->fields = NULL;
        newdescr->names = NULL;

        /*
         * Create a new subarray->shape tuple (it can be an arbitrary
         * sequence of integer like objects, neither of which is safe.
         */
        newdescr->subarray->shape = FUNC21(shape.len);
        if (newdescr->subarray->shape == NULL) {
            goto fail;
        }
        for (i=0; i < shape.len; i++) {
            FUNC22(newdescr->subarray->shape, i,
                             FUNC16((long)shape.ptr[i]));

            if (FUNC19(newdescr->subarray->shape, i) == NULL) {
                goto fail;
            }
        }

        FUNC27(shape);
        return newdescr;

    fail:
        FUNC24(type);
        FUNC24(newdescr);
        FUNC27(shape);
        return NULL;
    }
}