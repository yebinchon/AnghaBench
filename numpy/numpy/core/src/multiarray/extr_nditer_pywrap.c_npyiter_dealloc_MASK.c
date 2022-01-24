#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* tp_free ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {int /*<<< orphan*/ * nested_child; int /*<<< orphan*/ * iter; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyExc_RuntimeWarning ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 TYPE_3__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(NewNpyArrayIterObject *self)
{
    if (self->iter) {
        if (FUNC7(self->iter)) {
            if (FUNC1(PyExc_RuntimeWarning,
                    "Temporary data has not been written back to one of the "
                    "operands. Typically nditer is used as a context manager "
                    "otherwise 'close' must be called before reading iteration "
                    "results.", 1) < 0) {
                PyObject *s;

                s = FUNC3("npyiter_dealloc");
                if (s) {
                    FUNC2(s);
                    FUNC4(s);
                }
                else {
                    FUNC2(Py_None);
                }
            }
        }
        FUNC0(self->iter);
        self->iter = NULL;
        FUNC6(self->nested_child);
        self->nested_child = NULL;
    }
    FUNC5(self)->tp_free((PyObject*)self);
}