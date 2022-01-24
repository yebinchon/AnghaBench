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
typedef  int npy_bool ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_ARRAY_C_CONTIGUOUS ; 
 int /*<<< orphan*/  NPY_ARRAY_F_CONTIGUOUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(PyArrayObject *ap)
{
    npy_intp sd;
    npy_intp dim;
    int i;
    npy_bool is_c_contig = 1;

    sd = FUNC3(ap);
    for (i = FUNC4(ap) - 1; i >= 0; --i) {
        dim = FUNC1(ap)[i];
#if NPY_RELAXED_STRIDES_CHECKING
        /* contiguous by definition */
        if (dim == 0) {
            PyArray_ENABLEFLAGS(ap, NPY_ARRAY_C_CONTIGUOUS);
            PyArray_ENABLEFLAGS(ap, NPY_ARRAY_F_CONTIGUOUS);
            return;
        }
        if (dim != 1) {
            if (PyArray_STRIDES(ap)[i] != sd) {
                is_c_contig = 0;
            }
            sd *= dim;
        }
#else /* not NPY_RELAXED_STRIDES_CHECKING */
        if (FUNC5(ap)[i] != sd) {
            is_c_contig = 0;
            break;
        }
        /* contiguous, if it got this far */
        if (dim == 0) {
            break;
        }
        sd *= dim;
#endif /* not NPY_RELAXED_STRIDES_CHECKING */
    }
    if (is_c_contig) {
        FUNC2(ap, NPY_ARRAY_C_CONTIGUOUS);
    }
    else {
        FUNC0(ap, NPY_ARRAY_C_CONTIGUOUS);
    }

    /* check if fortran contiguous */
    sd = FUNC3(ap);
    for (i = 0; i < FUNC4(ap); ++i) {
        dim = FUNC1(ap)[i];
#if NPY_RELAXED_STRIDES_CHECKING
        if (dim != 1) {
            if (PyArray_STRIDES(ap)[i] != sd) {
                PyArray_CLEARFLAGS(ap, NPY_ARRAY_F_CONTIGUOUS);
                return;
            }
            sd *= dim;
        }
#else /* not NPY_RELAXED_STRIDES_CHECKING */
        if (FUNC5(ap)[i] != sd) {
            FUNC0(ap, NPY_ARRAY_F_CONTIGUOUS);
            return;
        }
        if (dim == 0) {
            break;
        }
        sd *= dim;
#endif /* not NPY_RELAXED_STRIDES_CHECKING */
    }
    FUNC2(ap, NPY_ARRAY_F_CONTIGUOUS);
    return;
}