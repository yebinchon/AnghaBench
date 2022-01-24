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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 

__attribute__((used)) static int
FUNC4(PyObject *normal_kwds)
{
    PyObject* obj = FUNC1(normal_kwds, "sig");
    if (obj != NULL) {
        if (FUNC1(normal_kwds, "signature")) {
            FUNC3(PyExc_TypeError,
                            "cannot specify both 'sig' and 'signature'");
            return -1;
        }
        /*
         * No INCREF or DECREF needed: got a borrowed reference above,
         * and, unlike e.g. PyList_SetItem, PyDict_SetItem INCREF's it.
         */
        FUNC2(normal_kwds, "signature", obj);
        FUNC0(normal_kwds, "sig");
    }
    return 0;
}