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
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(PyObject *seq,
                              char *paramname,
                              int count,
                              PyArrayObject **op
                              )
{
    int i;

    if (!FUNC1(seq) || FUNC3(seq) != count) {
        FUNC0(PyExc_ValueError,
                "parameter %s must be a sequence of length %d",
                paramname, count);
        return -1;
    }

    for (i = 0; i < count; ++i) {
        PyObject *item = FUNC2(seq, i);
        if (item == NULL) {
            goto fail;
        }
        op[i] = FUNC6(item);
        FUNC4(item);
        if (op[i] == NULL) {
            goto fail;
        }
    }

    return 0;

fail:
    while (--i >= 0) {
        FUNC5(op[i]);
        op[i] = NULL;
    }
    return -1;
}