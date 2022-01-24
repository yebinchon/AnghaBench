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
typedef  int npy_hash_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_SystemError ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(PyArray_Descr *descr, npy_hash_t *hash)
{
    PyObject *l, *tl;
    int st;

    l = FUNC2(0);
    if (l == NULL) {
        return -1;
    }

    st = FUNC5(descr, l);
    if (st) {
        FUNC4(l);
        return -1;
    }

    /*
     * Convert the list to tuple and compute the tuple hash using python
     * builtin function
     */
    tl = FUNC1(l);
    FUNC4(l);
    if (tl == NULL)
        return -1;

    *hash = FUNC3(tl);
    FUNC4(tl);
    if (*hash == -1) {
        /* XXX: does PyObject_Hash set an exception on failure ? */
#if 0
        PyErr_SetString(PyExc_SystemError,
                "(Hash) Error while hashing final tuple");
#endif
        return -1;
    }

    return 0;
}