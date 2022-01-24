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

/* Variables and functions */
 int NPY_STRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(PyObject *s, int nd, int *itemsize, int string_type)
{
    int r;
    npy_intp n, i;

    if (FUNC0(s)) {
        *itemsize = FUNC2(*itemsize, FUNC1((PyArrayObject *)s));
        return 0;
    }

    if ((nd == 0) || FUNC11(s) ||
#if defined(NPY_PY3K)
            PyMemoryView_Check(s) ||
#else
            FUNC3(s) ||
#endif
            FUNC12(s)) {

        /* If an object has no length, leave it be */
        if (string_type && s != NULL &&
                !FUNC11(s) && !FUNC12(s)) {
            PyObject *s_string = NULL;
            if (string_type == NPY_STRING) {
                s_string = FUNC7(s);
            }
            else {
#if defined(NPY_PY3K)
                s_string = PyObject_Str(s);
#else
                s_string = FUNC8(s);
#endif
            }
            if (s_string) {
                n = FUNC6(s_string);
                FUNC13(s_string);
            }
            else {
                n = -1;
            }
        }
        else {
            n = FUNC6(s);
        }
        if (n == -1) {
            FUNC4();
        }
        else {
            *itemsize = FUNC2(*itemsize, n);
        }
        return 0;
    }

    n = FUNC10(s);
    for (i = 0; i < n; i++) {
        PyObject *e = FUNC9(s,i);

        if (e == NULL) {
            return -1;
        }

        r = FUNC14(e, nd - 1, itemsize, string_type);
        FUNC13(e);
        if (r == -1) {
            return -1;
        }
    }

    return 0;
}