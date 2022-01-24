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
typedef  size_t npy_intp ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_INTP ; 
 int /*<<< orphan*/  NPY_QUICKSORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 size_t* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyArrayObject *
FUNC10(PyArrayObject * ktharray,
                         PyArrayObject * op,
                         int axis)
{
    const npy_intp * shape = FUNC4(op);
    PyArrayObject * kthrvl;
    npy_intp * kth;
    npy_intp nkth, i;

    if (!FUNC0(FUNC7(ktharray), NPY_INTP)) {
        FUNC8(PyExc_TypeError, "Partition index must be integer");
        return NULL;
    }

    if (FUNC3(ktharray) > 1) {
        FUNC8(PyExc_ValueError, "kth array must have dimension <= 1");
        return NULL;
    }
    kthrvl = (PyArrayObject *)FUNC1(ktharray, NPY_INTP);

    if (kthrvl == NULL)
        return NULL;

    kth = FUNC2(kthrvl);
    nkth = FUNC5(kthrvl);

    for (i = 0; i < nkth; i++) {
        if (kth[i] < 0) {
            kth[i] += shape[axis];
        }
        if (FUNC5(op) != 0 &&
                    (kth[i] < 0 || kth[i] >= shape[axis])) {
            FUNC8(PyExc_ValueError, "kth(=%zd) out of bounds (%zd)",
                         kth[i], shape[axis]);
            FUNC9(kthrvl);
            return NULL;
        }
    }

    /*
     * sort the array of kths so the partitions will
     * not trample on each other
     */
    if (FUNC5(kthrvl) > 1) {
        FUNC6(kthrvl, -1, NPY_QUICKSORT);
    }

    return kthrvl;
}