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
typedef  int /*<<< orphan*/  npy_bool ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_FALSE ; 
 int /*<<< orphan*/  NPY_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static npy_bool
FUNC4(PyObject *obj)
{
    int seqlen, i;
    if (!FUNC1(obj)) {
        return NPY_FALSE;
    }
    seqlen = FUNC3(obj);
    for (i = 0; i < seqlen; i++) {
        PyObject *item = FUNC2(obj, i);
        if (!FUNC0(item)) {
            return NPY_FALSE;
        }
    }

    return NPY_TRUE;
}