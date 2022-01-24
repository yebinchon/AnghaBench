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
typedef  scalar_t__ mem_overlap_t ;
typedef  int Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 scalar_t__ MEM_OVERLAP_NO ; 
 scalar_t__ MEM_OVERLAP_OVERFLOW ; 
 scalar_t__ MEM_OVERLAP_TOO_HARD ; 
 scalar_t__ MEM_OVERLAP_YES ; 
 int /*<<< orphan*/  NPY_BEGIN_THREADS ; 
 int /*<<< orphan*/  NPY_BEGIN_THREADS_DEF ; 
 int /*<<< orphan*/  NPY_END_THREADS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * PyExc_OverflowError ; 
 int /*<<< orphan*/ * PyExc_RuntimeError ; 
 int /*<<< orphan*/ * PyExc_ValueError ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  Py_RETURN_FALSE ; 
 int /*<<< orphan*/  Py_RETURN_TRUE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static PyObject *
FUNC13(PyObject *args, PyObject *kwds, Py_ssize_t default_max_work,
                         int raise_exceptions)
{
    PyObject * self_obj = NULL;
    PyObject * other_obj = NULL;
    PyArrayObject * self = NULL;
    PyArrayObject * other = NULL;
    PyObject *max_work_obj = NULL;
    static char *kwlist[] = {"self", "other", "max_work", NULL};

    mem_overlap_t result;
    static PyObject *too_hard_cls = NULL;
    Py_ssize_t max_work;
    NPY_BEGIN_THREADS_DEF;

    max_work = default_max_work;

    if (!FUNC0(args, kwds, "OO|O:shares_memory_impl", kwlist,
                                     &self_obj, &other_obj, &max_work_obj)) {
        return NULL;
    }

    if (FUNC1(self_obj)) {
        self = (PyArrayObject*)self_obj;
        FUNC9(self);
    }
    else {
        /* Use FromAny to enable checking overlap for objects exposing array
           interfaces etc. */
        self = (PyArrayObject*)FUNC2(self_obj);
        if (self == NULL) {
            goto fail;
        }
    }

    if (FUNC1(other_obj)) {
        other = (PyArrayObject*)other_obj;
        FUNC9(other);
    }
    else {
        other = (PyArrayObject*)FUNC2(other_obj);
        if (other == NULL) {
            goto fail;
        }
    }

    if (max_work_obj == NULL || max_work_obj == Py_None) {
        /* noop */
    }
    else if (FUNC8(max_work_obj)) {
        max_work = FUNC7(max_work_obj);
        if (FUNC3()) {
            goto fail;
        }
    }
#if !defined(NPY_PY3K)
    else if (FUNC6(max_work_obj)) {
        max_work = FUNC5(max_work_obj);
    }
#endif
    else {
        FUNC4(PyExc_ValueError, "max_work must be an integer");
        goto fail;
    }

    if (max_work < -2) {
        FUNC4(PyExc_ValueError, "Invalid value for max_work");
        goto fail;
    }

    NPY_BEGIN_THREADS;
    result = FUNC12(self, other, max_work);
    NPY_END_THREADS;

    FUNC10(self);
    FUNC10(other);

    if (result == MEM_OVERLAP_NO) {
        Py_RETURN_FALSE;
    }
    else if (result == MEM_OVERLAP_YES) {
        Py_RETURN_TRUE;
    }
    else if (result == MEM_OVERLAP_OVERFLOW) {
        if (raise_exceptions) {
            FUNC4(PyExc_OverflowError,
                            "Integer overflow in computing overlap");
            return NULL;
        }
        else {
            /* Don't know, so say yes */
            Py_RETURN_TRUE;
        }
    }
    else if (result == MEM_OVERLAP_TOO_HARD) {
        if (raise_exceptions) {
            FUNC11("numpy.core._exceptions", "TooHardError",
                             &too_hard_cls);
            if (too_hard_cls) {
                FUNC4(too_hard_cls, "Exceeded max_work");
            }
            return NULL;
        }
        else {
            /* Don't know, so say yes */
            Py_RETURN_TRUE;
        }
    }
    else {
        /* Doesn't happen usually */
        FUNC4(PyExc_RuntimeError,
                        "Error in computing overlap");
        return NULL;
    }

fail:
    FUNC10(self);
    FUNC10(other);
    return NULL;
}