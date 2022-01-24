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
typedef  int /*<<< orphan*/  PyUFuncObject ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UFUNC_REDUCE ; 

__attribute__((used)) static PyObject *
FUNC2(PyUFuncObject *ufunc, PyObject *args, PyObject *kwds)
{
    int errval;
    PyObject *override = NULL;

    errval = FUNC0(ufunc, "reduce", args, kwds, &override);
    if (errval) {
        return NULL;
    }
    else if (override) {
        return override;
    }
    return FUNC1(ufunc, args, kwds, UFUNC_REDUCE);
}