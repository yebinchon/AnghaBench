#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type_num; } ;
struct TYPE_5__ {int /*<<< orphan*/  obmeta; } ;
typedef  scalar_t__ Py_ssize_t ;
typedef  TYPE_1__ PyTimedeltaScalarObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArray_DatetimeMetaData ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 scalar_t__ NPY_DATETIME ; 
 scalar_t__ NPY_OBJECT ; 
 scalar_t__ NPY_TIMEDELTA ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  Timedelta ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC19(PyObject *obj,
                        PyArray_DatetimeMetaData *meta)
{
    /* Array -> use its metadata */
    if (FUNC1(obj)) {
        PyArrayObject *arr = (PyArrayObject *)obj;
        PyArray_Descr *arr_dtype = FUNC2(arr);

        /* If the array has metadata, use it */
        if (arr_dtype->type_num == NPY_DATETIME ||
                    arr_dtype->type_num == NPY_TIMEDELTA) {
            PyArray_DatetimeMetaData *tmp_meta;

            /* Get the metadata from the type */
            tmp_meta = FUNC18(arr_dtype);
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
        else {
            if (FUNC4(arr) == 0) {
                /*
                 * special handling of 0 dimensional NumPy object
                 * arrays, which may be indexed to retrieve their
                 * single object using [()], but not by using
                 * __getitem__(integer) approaches
                 */
                PyObject *item, *args;

                args = FUNC12(0);
                if (args == NULL) {
                    return 0;
                }
                item = FUNC8(obj, args);
                FUNC14(args);
                if (item == NULL) {
                    return 0;
                }
                /*
                 * NOTE: may need other type checks here in the future
                 * for expanded 0 D datetime array conversions?
                 */
                if (FUNC6(item)) {
                    FUNC14(item);
                    return FUNC17(meta);
                }
                FUNC14(item);
            }
        }
    }
    /* Datetime scalar -> use its metadata */
    else if (FUNC3(obj, Timedelta)) {
        PyTimedeltaScalarObject *dts = (PyTimedeltaScalarObject *)obj;

        /* Combine it with 'meta' */
        if (FUNC16(meta,
                        &dts->obmeta, meta, 1, 1) < 0) {
            return -1;
        }

        return 0;
    }
    /* String -> parse it to find out */
    else if (FUNC5(obj) || FUNC13(obj)) {
        /* No timedelta parser yet */
        return 0;
    }
    /* Python timedelta object -> 'us' */
    else if (FUNC6(obj)) {
        return FUNC17(meta);
    }

    /* Now check if what we have left is a sequence for recursion */
    if (FUNC9(obj)) {
        Py_ssize_t i, len = FUNC11(obj);
        if (len < 0 && FUNC7()) {
            return -1;
        }

        for (i = 0; i < len; ++i) {
            int ret;
            PyObject *f = FUNC10(obj, i);
            if (f == NULL) {
                return -1;
            }
            if (FUNC0(" in recursive_find_object_timedelta64_type") != 0) {
                FUNC14(f);
                return -1;
            }
            ret = FUNC19(f, meta);
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