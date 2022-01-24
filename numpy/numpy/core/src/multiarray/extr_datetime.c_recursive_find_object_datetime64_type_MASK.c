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
typedef  int /*<<< orphan*/  npy_datetime ;
struct TYPE_15__ {int num; int /*<<< orphan*/  base; } ;
struct TYPE_14__ {scalar_t__ type_num; } ;
struct TYPE_13__ {TYPE_3__ obmeta; } ;
typedef  scalar_t__ Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyDatetimeScalarObject ;
typedef  TYPE_2__ PyArray_Descr ;
typedef  TYPE_3__ PyArray_DatetimeMetaData ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  Datetime ; 
 scalar_t__ NPY_DATETIME ; 
 int /*<<< orphan*/  NPY_FR_D ; 
 int /*<<< orphan*/  NPY_FR_ERROR ; 
 int /*<<< orphan*/  NPY_FR_us ; 
 scalar_t__ NPY_OBJECT ; 
 scalar_t__ NPY_STRING ; 
 scalar_t__ NPY_TIMEDELTA ; 
 scalar_t__ NPY_UNICODE ; 
 int /*<<< orphan*/  NPY_UNSAFE_CASTING ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (TYPE_3__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC19 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC20(PyObject *obj,
                        PyArray_DatetimeMetaData *meta)
{
    /* Array -> use its metadata */
    if (FUNC1(obj)) {
        PyArrayObject *arr = (PyArrayObject *)obj;
        PyArray_Descr *arr_dtype = FUNC2(arr);

        if (arr_dtype->type_num == NPY_STRING ||
                            arr_dtype->type_num == NPY_UNICODE) {
            return FUNC18(arr, meta);
        }
        /* If the array has metadata, use it */
        else if (arr_dtype->type_num == NPY_DATETIME ||
                    arr_dtype->type_num == NPY_TIMEDELTA) {
            PyArray_DatetimeMetaData *tmp_meta;

            /* Get the metadata from the type */
            tmp_meta = FUNC19(arr_dtype);
            if (tmp_meta == NULL) {
                return -1;
            }

            /* Combine it with 'meta' */
            if (FUNC16(meta,
                            tmp_meta, meta, 0, 0) < 0) {
                return -1;
            }

            return 0;
        }
        /* If it's not an object array, stop looking */
        else if (arr_dtype->type_num != NPY_OBJECT) {
            return 0;
        }
    }
    /* Datetime scalar -> use its metadata */
    else if (FUNC3(obj, Datetime)) {
        PyDatetimeScalarObject *dts = (PyDatetimeScalarObject *)obj;

        /* Combine it with 'meta' */
        if (FUNC16(meta,
                        &dts->obmeta, meta, 0, 0) < 0) {
            return -1;
        }

        return 0;
    }
    /* String -> parse it to find out */
    else if (FUNC4(obj) || FUNC13(obj)) {
        npy_datetime tmp = 0;
        PyArray_DatetimeMetaData tmp_meta;

        tmp_meta.base = NPY_FR_ERROR;
        tmp_meta.num = 1;

        if (FUNC17(&tmp_meta, obj,
                                        NPY_UNSAFE_CASTING, &tmp) < 0) {
            /* If it's a value error, clear the error */
            if (FUNC9() &&
                    FUNC8(FUNC9(),
                                    PyExc_ValueError)) {
                FUNC7();
                return 0;
            }
            /* Otherwise propagate the error */
            else {
                return -1;
            }
        }

        /* Combine it with 'meta' */
        if (FUNC16(meta,
                        &tmp_meta, meta, 0, 0) < 0) {
            return -1;
        }

        return 0;
    }
    /* Python datetime object -> 'us' */
    else if (FUNC5(obj)) {
        PyArray_DatetimeMetaData tmp_meta;

        tmp_meta.base = NPY_FR_us;
        tmp_meta.num = 1;

        /* Combine it with 'meta' */
        if (FUNC16(meta,
                        &tmp_meta, meta, 0, 0) < 0) {
            return -1;
        }

        return 0;
    }
    /* Python date object -> 'D' */
    else if (FUNC6(obj)) {
        PyArray_DatetimeMetaData tmp_meta;

        tmp_meta.base = NPY_FR_D;
        tmp_meta.num = 1;

        /* Combine it with 'meta' */
        if (FUNC16(meta,
                        &tmp_meta, meta, 0, 0) < 0) {
            return -1;
        }

        return 0;
    }

    /* Now check if what we have left is a sequence for recursion */
    if (FUNC10(obj)) {
        Py_ssize_t i, len = FUNC12(obj);
        if (len < 0 && FUNC9()) {
            return -1;
        }

        for (i = 0; i < len; ++i) {
            int ret;
            PyObject *f = FUNC11(obj, i);
            if (f == NULL) {
                return -1;
            }
            if (FUNC0(" in recursive_find_object_datetime64_type") != 0) {
                FUNC14(f);
                return -1;
            }
            ret = FUNC20(f, meta);
            FUNC15();
            FUNC14(f);
            if (ret < 0) {
                return ret;
            }
        }

        return 0;
    }
    /* Otherwise ignore it */
    else {
        return 0;
    }
}