#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ elsize; } ;
struct TYPE_10__ {int /*<<< orphan*/ * ob_type; } ;
typedef  TYPE_1__ PyObject ;
typedef  TYPE_2__ PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_ITEM_HASOBJECT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_Type ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static PyObject *
FUNC9(PyArrayObject *self, PyObject *args)
{
    int protocol;
    PyArray_Descr *descr = NULL;

    if (!FUNC0(args, "i", &protocol)) {
        return NULL;
    }

    descr = FUNC1(self);
    if ((protocol < 5) ||
        (!FUNC2((PyArrayObject*)self) &&
         !FUNC3((PyArrayObject*)self)) ||
        FUNC4(descr, NPY_ITEM_HASOBJECT) ||
        (FUNC6(((PyObject*)self)->ob_type, &PyArray_Type) &&
         ((PyObject*)self)->ob_type != &PyArray_Type) ||
        descr->elsize == 0) {
        /* The PickleBuffer class from version 5 of the pickle protocol
         * can only be used for arrays backed by a contiguous data buffer.
         * For all other cases we fallback to the generic array_reduce
         * method that involves using a temporary bytes allocation. */
        return FUNC8(self, protocol);
    }
    else if (protocol == 5) {
        return FUNC7(self, protocol);
    }
    else {
        FUNC5(PyExc_ValueError,
                     "__reduce_ex__ called with protocol > 5");
        return NULL;
    }
}