#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  base; int /*<<< orphan*/ * shape; } ;
typedef  scalar_t__ Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_ArrayDescr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_SystemError ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(PyArray_ArrayDescr* adescr, PyObject *l)
{
    PyObject *item;
    Py_ssize_t i;
    int st;

    /*
     * Add shape and descr itself to the list of object to hash
     */
    if (FUNC3(adescr->shape)) {
        for(i = 0; i < FUNC5(adescr->shape); ++i) {
            item = FUNC4(adescr->shape, i);
            if (item == NULL) {
                FUNC0(PyExc_SystemError,
                        "(Hash) Error while getting shape item of subarray dtype ???");
                return -1;
            }
            FUNC2(l, item);
        }
    }
    else if (FUNC1(adescr->shape)) {
        FUNC2(l, adescr->shape);
    }
    else {
        FUNC0(PyExc_SystemError,
                "(Hash) Shape of subarray dtype neither a tuple or int ???");
        return -1;
    }

    FUNC7(adescr->base);
    st = FUNC8(adescr->base, l);
    FUNC6(adescr->base);

    return st;
}