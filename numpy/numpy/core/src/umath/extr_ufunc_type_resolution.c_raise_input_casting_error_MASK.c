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
typedef  int /*<<< orphan*/  npy_intp ;
typedef  int /*<<< orphan*/  PyUFuncObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;
typedef  int /*<<< orphan*/  NPY_CASTING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(
        PyUFuncObject *ufunc,
        NPY_CASTING casting,
        PyArray_Descr *from,
        PyArray_Descr *to,
        npy_intp i)
{
    static PyObject *exc_type = NULL;
    FUNC0(
        "numpy.core._exceptions", "_UFuncInputCastingError",
        &exc_type);
    if (exc_type == NULL) {
        return -1;
    }

    return FUNC1(exc_type, ufunc, casting, from, to, i);
}