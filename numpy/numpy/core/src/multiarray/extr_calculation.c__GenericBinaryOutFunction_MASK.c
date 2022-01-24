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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC4(PyArrayObject *m1, PyObject *m2, PyArrayObject *out,
                          PyObject *op)
{
    if (out == NULL) {
        return FUNC1(op, "OO", m1, m2);
    }
    else {
        PyObject *args, *ret;
        static PyObject *kw = NULL;

        if (kw == NULL) {
            kw = FUNC2("{s:s}", "casting", "unsafe");
            if (kw == NULL) {
                return NULL;
            }
        }

        args = FUNC2("OOO", m1, m2, out);
        if (args == NULL) {
            return NULL;
        }

        ret = FUNC0(op, args, kw);

        FUNC3(args);

        return ret;
    }
}