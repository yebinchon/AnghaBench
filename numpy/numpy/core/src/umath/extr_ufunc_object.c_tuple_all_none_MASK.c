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
typedef  scalar_t__ npy_intp ;
typedef  int /*<<< orphan*/  npy_bool ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_FALSE ; 
 int /*<<< orphan*/  NPY_TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ Py_None ; 

__attribute__((used)) static npy_bool
FUNC2(PyObject *tup) {
    npy_intp i;
    for (i = 0; i < FUNC1(tup); ++i) {
        if (FUNC0(tup, i) != Py_None) {
            return NPY_FALSE;
        }
    }
    return NPY_TRUE;
}