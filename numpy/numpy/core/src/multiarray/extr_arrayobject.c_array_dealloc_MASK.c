#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* tp_free ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int flags; int nd; int /*<<< orphan*/  descr; int /*<<< orphan*/  dimensions; scalar_t__ data; scalar_t__ base; int /*<<< orphan*/ * weakreflist; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArrayObject_fields ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int NPY_ARRAY_OWNDATA ; 
 int NPY_ARRAY_UPDATEIFCOPY ; 
 int NPY_ARRAY_WRITEBACKIFCOPY ; 
 int /*<<< orphan*/  NPY_ITEM_REFCOUNT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  PyExc_DeprecationWarning ; 
 int /*<<< orphan*/  PyExc_RuntimeWarning ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(PyArrayObject *self)
{
    PyArrayObject_fields *fa = (PyArrayObject_fields *)self;

    FUNC13((PyObject*)self);

    if (fa->weakreflist != NULL) {
        FUNC7((PyObject *)self);
    }
    if (fa->base) {
        int retval;
        if (FUNC0(self) & NPY_ARRAY_WRITEBACKIFCOPY)
        {
            char const * msg = "WRITEBACKIFCOPY detected in array_dealloc. "
                " Required call to PyArray_ResolveWritebackIfCopy or "
                "PyArray_DiscardWritebackIfCopy is missing.";
            /*
             * prevent reaching 0 twice and thus recursing into dealloc.
             * Increasing sys.gettotalrefcount, but path should not be taken.
             */
            FUNC9(self);
            FUNC12(PyExc_RuntimeWarning, msg);
            retval = FUNC2(self);
            if (retval < 0)
            {
                FUNC6();
                FUNC5();
            }
        }
        if (FUNC0(self) & NPY_ARRAY_UPDATEIFCOPY) {
            /* DEPRECATED, remove once the flag is removed */
            char const * msg = "UPDATEIFCOPY detected in array_dealloc. "
                " Required call to PyArray_ResolveWritebackIfCopy or "
                "PyArray_DiscardWritebackIfCopy is missing";
            /*
             * prevent reaching 0 twice and thus recursing into dealloc.
             * Increasing sys.gettotalrefcount, but path should not be taken.
             */
            FUNC9(self);
            /* 2017-Nov-10 1.14 */
            FUNC12(PyExc_DeprecationWarning, msg);
            retval = FUNC2(self);
            if (retval < 0)
            {
                FUNC6();
                FUNC5();
            }
        }
        /*
         * If fa->base is non-NULL, it is something
         * to DECREF -- either a view or a buffer object
         */
        FUNC11(fa->base);
    }

    if ((fa->flags & NPY_ARRAY_OWNDATA) && fa->data) {
        /* Free internal references if an Object array */
        if (FUNC4(fa->descr, NPY_ITEM_REFCOUNT)) {
            FUNC3(self);
        }
        FUNC14(fa->data, FUNC1(self));
    }

    /* must match allocation in PyArray_NewFromDescr */
    FUNC15(fa->dimensions, 2 * fa->nd);
    FUNC8(fa->descr);
    FUNC10(self)->tp_free((PyObject *)self);
}