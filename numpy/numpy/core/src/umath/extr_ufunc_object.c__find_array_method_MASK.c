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
 int NPY_MAXARGS ; 
 int /*<<< orphan*/  NPY_PRIORITY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 double FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject*
FUNC9(PyObject *args, PyObject *method_name)
{
    int i, n_methods;
    PyObject *obj;
    PyObject *with_method[NPY_MAXARGS], *methods[NPY_MAXARGS];
    PyObject *method = NULL;

    n_methods = 0;
    for (i = 0; i < FUNC7(args); i++) {
        obj = FUNC6(args, i);
        if (FUNC0(obj) || FUNC2(obj)) {
            continue;
        }
        method = FUNC5(obj, method_name);
        if (method) {
            if (FUNC3(method)) {
                with_method[n_methods] = obj;
                methods[n_methods] = method;
                ++n_methods;
            }
            else {
                FUNC8(method);
                method = NULL;
            }
        }
        else {
            FUNC4();
        }
    }
    if (n_methods > 0) {
        /* If we have some methods defined, find the one of highest priority */
        method = methods[0];
        if (n_methods > 1) {
            double maxpriority = FUNC1(with_method[0],
                                                     NPY_PRIORITY);
            for (i = 1; i < n_methods; ++i) {
                double priority = FUNC1(with_method[i],
                                                      NPY_PRIORITY);
                if (priority > maxpriority) {
                    maxpriority = priority;
                    FUNC8(method);
                    method = methods[i];
                }
                else {
                    FUNC8(methods[i]);
                }
            }
        }
    }
    return method;
}