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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ***) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(PyObject *args, PyObject *kwds)
{
    int i;
    int nin, nout;
    PyObject *out_kwd_obj;
    PyObject *fast;
    PyObject **in_objs, **out_objs;

    /* check inputs */
    nin = FUNC2(args);
    if (nin < 0) {
        return -1;
    }
    fast = FUNC0(args, "Could not convert object to sequence");
    if (fast == NULL) {
        return -1;
    }
    in_objs = FUNC1(fast);
    for (i = 0; i < nin; ++i) {
        if (FUNC4(in_objs[i])) {
            FUNC5(fast);
            return 1;
        }
    }
    FUNC5(fast);
    /* check outputs, if any */
    nout = FUNC3(kwds, &out_kwd_obj, &out_objs);
    if (nout < 0) {
        return -1;
    }
    for (i = 0; i < nout; i++) {
        if (FUNC4(out_objs[i])) {
            FUNC5(out_kwd_obj);
            return 1;
        }
    }
    FUNC5(out_kwd_obj);
    return 0;
}