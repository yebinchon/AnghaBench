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

/* Variables and functions */
 int /*<<< orphan*/  Bool ; 
 long NPY_MAX_INTP ; 
 long NPY_MIN_INTP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  PyExc_OverflowError ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 long FUNC7 (int /*<<< orphan*/ *) ; 
 long FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (long) ; 

__attribute__((used)) static npy_intp
FUNC13(PyObject *o, const char * msg)
{
#if (NPY_SIZEOF_LONG < NPY_SIZEOF_INTP)
    long long long_value = -1;
#else
    long long_value = -1;
#endif
    PyObject *obj, *err;

    /*
     * Be a bit stricter and not allow bools.
     * np.bool_ is also disallowed as Boolean arrays do not currently
     * support index.
     */
    if (!o || FUNC1(o) || FUNC0(o, Bool)) {
        FUNC4(PyExc_TypeError, msg);
        return -1;
    }

    /*
     * Since it is the usual case, first check if o is an integer. This is
     * an exact check, since otherwise __index__ is used.
     */
#if !defined(NPY_PY3K)
    if (FUNC6(o)) {
  #if (NPY_SIZEOF_LONG <= NPY_SIZEOF_INTP)
        /* No overflow is possible, so we can just return */
        return FUNC5(o);
  #else
        long_value = PyInt_AS_LONG(o);
        goto overflow_check;
  #endif
    }
    else
#endif
    if (FUNC9(o)) {
#if (NPY_SIZEOF_LONG < NPY_SIZEOF_INTP)
        long_value = PyLong_AsLongLong(o);
#else
        long_value = FUNC7(o);
#endif
        return (npy_intp)long_value;
    }

    /*
     * The most general case. PyNumber_Index(o) covers everything
     * including arrays. In principle it may be possible to replace
     * the whole function by PyIndex_AsSSize_t after deprecation.
     */
    obj = FUNC10(o);
    if (obj == NULL) {
        return -1;
    }
#if (NPY_SIZEOF_LONG < NPY_SIZEOF_INTP)
    long_value = PyLong_AsLongLong(obj);
#else
    long_value = FUNC7(obj);
#endif
    FUNC11(obj);

    if (FUNC12(long_value)) {
        err = FUNC3();
        /* Only replace TypeError's here, which are the normal errors. */
        if (FUNC2(err, PyExc_TypeError)) {
            FUNC4(PyExc_TypeError, msg);
        }
        return -1;
    }
    goto overflow_check; /* silence unused warning */

overflow_check:
#if (NPY_SIZEOF_LONG < NPY_SIZEOF_INTP)
  #if (NPY_SIZEOF_LONGLONG > NPY_SIZEOF_INTP)
    if ((long_value < NPY_MIN_INTP) || (long_value > NPY_MAX_INTP)) {
        PyErr_SetString(PyExc_OverflowError,
                "Python int too large to convert to C numpy.intp");
        return -1;
    }
  #endif
#else
  #if (NPY_SIZEOF_LONG > NPY_SIZEOF_INTP)
    if ((long_value < NPY_MIN_INTP) || (long_value > NPY_MAX_INTP)) {
        PyErr_SetString(PyExc_OverflowError,
                "Python int too large to convert to C numpy.intp");
        return -1;
    }
  #endif
#endif
    return long_value;
}