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
typedef  int /*<<< orphan*/  npy_uint32 ;
typedef  int Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_ITER_BUFFERED ; 
 int /*<<< orphan*/  NPY_ITER_COMMON_DTYPE ; 
 int /*<<< orphan*/  NPY_ITER_COPY_IF_OVERLAP ; 
 int /*<<< orphan*/  NPY_ITER_C_INDEX ; 
 int /*<<< orphan*/  NPY_ITER_DELAY_BUFALLOC ; 
 int /*<<< orphan*/  NPY_ITER_EXTERNAL_LOOP ; 
 int /*<<< orphan*/  NPY_ITER_F_INDEX ; 
 int /*<<< orphan*/  NPY_ITER_GROWINNER ; 
 int /*<<< orphan*/  NPY_ITER_MULTI_INDEX ; 
 int /*<<< orphan*/  NPY_ITER_RANGED ; 
 int /*<<< orphan*/  NPY_ITER_REDUCE_OK ; 
 int /*<<< orphan*/  NPY_ITER_REFS_OK ; 
 int /*<<< orphan*/  NPY_ITER_ZEROSIZE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char**,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static int
FUNC11(PyObject *flags_in, npy_uint32 *flags)
{
    npy_uint32 tmpflags = 0;
    int iflags, nflags;

    PyObject *f;
    char *str = NULL;
    Py_ssize_t length = 0;
    npy_uint32 flag;

    if (flags_in == NULL || flags_in == Py_None) {
        return 1;
    }

    if (!FUNC6(flags_in) && !FUNC3(flags_in)) {
        FUNC2(PyExc_ValueError,
                "Iterator global flags must be a list or tuple of strings");
        return 0;
    }

    nflags = FUNC5(flags_in);

    for (iflags = 0; iflags < nflags; ++iflags) {
        f = FUNC4(flags_in, iflags);
        if (f == NULL) {
            return 0;
        }

        if (FUNC8(f)) {
            /* accept unicode input */
            PyObject *f_str;
            f_str = FUNC7(f);
            if (f_str == NULL) {
                FUNC9(f);
                return 0;
            }
            FUNC9(f);
            f = f_str;
        }

        if (FUNC0(f, &str, &length) < 0) {
            FUNC9(f);
            return 0;
        }
        /* Use switch statements to quickly isolate the right flag */
        flag = 0;
        switch (str[0]) {
            case 'b':
                if (FUNC10(str, "buffered") == 0) {
                    flag = NPY_ITER_BUFFERED;
                }
                break;
            case 'c':
                if (length >= 6) switch (str[5]) {
                    case 'e':
                        if (FUNC10(str, "c_index") == 0) {
                            flag = NPY_ITER_C_INDEX;
                        }
                        break;
                    case 'i':
                        if (FUNC10(str, "copy_if_overlap") == 0) {
                            flag = NPY_ITER_COPY_IF_OVERLAP;
                        }
                        break;
                    case 'n':
                        if (FUNC10(str, "common_dtype") == 0) {
                            flag = NPY_ITER_COMMON_DTYPE;
                        }
                        break;
                }
                break;
            case 'd':
                if (FUNC10(str, "delay_bufalloc") == 0) {
                    flag = NPY_ITER_DELAY_BUFALLOC;
                }
                break;
            case 'e':
                if (FUNC10(str, "external_loop") == 0) {
                    flag = NPY_ITER_EXTERNAL_LOOP;
                }
                break;
            case 'f':
                if (FUNC10(str, "f_index") == 0) {
                    flag = NPY_ITER_F_INDEX;
                }
                break;
            case 'g':
                /*
                 * Documentation is grow_inner, but initial implementation
                 * was growinner, so allowing for either.
                 */
                if (FUNC10(str, "grow_inner") == 0 ||
                            FUNC10(str, "growinner") == 0) {
                    flag = NPY_ITER_GROWINNER;
                }
                break;
            case 'm':
                if (FUNC10(str, "multi_index") == 0) {
                    flag = NPY_ITER_MULTI_INDEX;
                }
                break;
            case 'r':
                if (FUNC10(str, "ranged") == 0) {
                    flag = NPY_ITER_RANGED;
                }
                else if (FUNC10(str, "refs_ok") == 0) {
                    flag = NPY_ITER_REFS_OK;
                }
                else if (FUNC10(str, "reduce_ok") == 0) {
                    flag = NPY_ITER_REDUCE_OK;
                }
                break;
            case 'z':
                if (FUNC10(str, "zerosize_ok") == 0) {
                    flag = NPY_ITER_ZEROSIZE_OK;
                }
                break;
        }
        if (flag == 0) {
            FUNC1(PyExc_ValueError,
                    "Unexpected iterator global flag \"%s\"", str);
            FUNC9(f);
            return 0;
        }
        else {
            tmpflags |= flag;
        }
        FUNC9(f);
    }

    *flags |= tmpflags;
    return 1;
}