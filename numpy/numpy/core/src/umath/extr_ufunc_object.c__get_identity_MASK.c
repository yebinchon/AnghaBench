#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int npy_bool ;
struct TYPE_4__ {int identity; int /*<<< orphan*/ * identity_value; } ;
typedef  TYPE_1__ PyUFuncObject ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
#define  PyUFunc_IdentityValue 133 
#define  PyUFunc_MinusOne 132 
#define  PyUFunc_None 131 
#define  PyUFunc_One 130 
#define  PyUFunc_ReorderableNone 129 
#define  PyUFunc_Zero 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static PyObject *
FUNC4(PyUFuncObject *ufunc, npy_bool *reorderable) {
    switch(ufunc->identity) {
    case PyUFunc_One:
        *reorderable = 1;
        return FUNC1(1);

    case PyUFunc_Zero:
        *reorderable = 1;
        return FUNC1(0);

    case PyUFunc_MinusOne:
        *reorderable = 1;
        return FUNC1(-1);

    case PyUFunc_ReorderableNone:
        *reorderable = 1;
        Py_RETURN_NONE;

    case PyUFunc_None:
        *reorderable = 0;
        Py_RETURN_NONE;

    case PyUFunc_IdentityValue:
        *reorderable = 1;
        FUNC2(ufunc->identity_value);
        return ufunc->identity_value;

    default:
        FUNC0(PyExc_ValueError,
                "ufunc %s has an invalid identity", FUNC3(ufunc));
        return NULL;
    }
}