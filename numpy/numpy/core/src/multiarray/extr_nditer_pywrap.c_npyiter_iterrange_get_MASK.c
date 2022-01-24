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
typedef  int /*<<< orphan*/  npy_intp ;
struct TYPE_3__ {int /*<<< orphan*/ * iter; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *FUNC5(NewNpyArrayIterObject *self)
{
    npy_intp istart = 0, iend = 0;
    PyObject *ret;

    if (self->iter == NULL) {
        FUNC1(PyExc_ValueError,
                "Iterator is invalid");
        return NULL;
    }

    FUNC0(self->iter, &istart, &iend);

    ret = FUNC3(2);
    if (ret == NULL) {
        return NULL;
    }

    FUNC4(ret, 0, FUNC2(istart));
    FUNC4(ret, 1, FUNC2(iend));

    return ret;
}