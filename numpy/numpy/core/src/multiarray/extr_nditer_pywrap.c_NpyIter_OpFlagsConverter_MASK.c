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
 int /*<<< orphan*/  NPY_ITER_ALIGNED ; 
 int /*<<< orphan*/  NPY_ITER_ALLOCATE ; 
 int /*<<< orphan*/  NPY_ITER_ARRAYMASK ; 
 int /*<<< orphan*/  NPY_ITER_CONTIG ; 
 int /*<<< orphan*/  NPY_ITER_COPY ; 
 int /*<<< orphan*/  NPY_ITER_NBO ; 
 int /*<<< orphan*/  NPY_ITER_NO_BROADCAST ; 
 int /*<<< orphan*/  NPY_ITER_NO_SUBTYPE ; 
 int /*<<< orphan*/  NPY_ITER_OVERLAP_ASSUME_ELEMENTWISE ; 
 int /*<<< orphan*/  NPY_ITER_READONLY ; 
 int /*<<< orphan*/  NPY_ITER_READWRITE ; 
 int /*<<< orphan*/  NPY_ITER_UPDATEIFCOPY ; 
 int /*<<< orphan*/  NPY_ITER_VIRTUAL ; 
 int /*<<< orphan*/  NPY_ITER_WRITEMASKED ; 
 int /*<<< orphan*/  NPY_ITER_WRITEONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char**,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static int
FUNC12(PyObject *op_flags_in,
                         npy_uint32 *op_flags)
{
    int iflags, nflags;
    npy_uint32 flag;

    if (!FUNC7(op_flags_in) && !FUNC4(op_flags_in)) {
        FUNC3(PyExc_ValueError,
                "op_flags must be a tuple or array of per-op flag-tuples");
        return 0;
    }

    nflags = FUNC6(op_flags_in);

    *op_flags = 0;
    for (iflags = 0; iflags < nflags; ++iflags) {
        PyObject *f;
        char *str = NULL;
        Py_ssize_t length = 0;

        f = FUNC5(op_flags_in, iflags);
        if (f == NULL) {
            return 0;
        }

        if (FUNC9(f)) {
            /* accept unicode input */
            PyObject *f_str;
            f_str = FUNC8(f);
            if (f_str == NULL) {
                FUNC10(f);
                return 0;
            }
            FUNC10(f);
            f = f_str;
        }

        if (FUNC0(f, &str, &length) < 0) {
            FUNC1();
            FUNC10(f);
            FUNC3(PyExc_ValueError,
                   "op_flags must be a tuple or array of per-op flag-tuples");
            return 0;
        }

        /* Use switch statements to quickly isolate the right flag */
        flag = 0;
        switch (str[0]) {
            case 'a':
                if (length > 2) switch(str[2]) {
                    case 'i':
                        if (FUNC11(str, "aligned") == 0) {
                            flag = NPY_ITER_ALIGNED;
                        }
                        break;
                    case 'l':
                        if (FUNC11(str, "allocate") == 0) {
                            flag = NPY_ITER_ALLOCATE;
                        }
                        break;
                    case 'r':
                        if (FUNC11(str, "arraymask") == 0) {
                            flag = NPY_ITER_ARRAYMASK;
                        }
                        break;
                }
                break;
            case 'c':
                if (FUNC11(str, "copy") == 0) {
                    flag = NPY_ITER_COPY;
                }
                if (FUNC11(str, "contig") == 0) {
                    flag = NPY_ITER_CONTIG;
                }
                break;
            case 'n':
                switch (str[1]) {
                    case 'b':
                        if (FUNC11(str, "nbo") == 0) {
                            flag = NPY_ITER_NBO;
                        }
                        break;
                    case 'o':
                        if (FUNC11(str, "no_subtype") == 0) {
                            flag = NPY_ITER_NO_SUBTYPE;
                        }
                        else if (FUNC11(str, "no_broadcast") == 0) {
                            flag = NPY_ITER_NO_BROADCAST;
                        }
                        break;
                }
                break;
            case 'o':
                if (FUNC11(str, "overlap_assume_elementwise") == 0) {
                    flag = NPY_ITER_OVERLAP_ASSUME_ELEMENTWISE;
                }
                break;
            case 'r':
                if (length > 4) switch (str[4]) {
                    case 'o':
                        if (FUNC11(str, "readonly") == 0) {
                            flag = NPY_ITER_READONLY;
                        }
                        break;
                    case 'w':
                        if (FUNC11(str, "readwrite") == 0) {
                            flag = NPY_ITER_READWRITE;
                        }
                        break;
                }
                break;
            case 'u':
                switch (str[1]) {
                    case 'p':
                        if (FUNC11(str, "updateifcopy") == 0) {
                            flag = NPY_ITER_UPDATEIFCOPY;
                        }
                        break;
                }
                break;
            case 'v':
                if (FUNC11(str, "virtual") == 0) {
                    flag = NPY_ITER_VIRTUAL;
                }
                break;
            case 'w':
                if (length > 5) switch (str[5]) {
                    case 'o':
                        if (FUNC11(str, "writeonly") == 0) {
                            flag = NPY_ITER_WRITEONLY;
                        }
                        break;
                    case 'm':
                        if (FUNC11(str, "writemasked") == 0) {
                            flag = NPY_ITER_WRITEMASKED;
                        }
                        break;
                }
                break;
        }
        if (flag == 0) {
            FUNC2(PyExc_ValueError,
                    "Unexpected per-op iterator flag \"%s\"", str);
            FUNC10(f);
            return 0;
        }
        else {
            *op_flags |= flag;
        }
        FUNC10(f);
    }

    return 1;
}