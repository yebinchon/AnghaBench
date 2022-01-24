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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 void FUNC2 () ; 

__attribute__((used)) static PyObject *FUNC3(PyObject *capi_self, PyObject *capi_args,
                          PyObject *capi_keywds, void (*f2py_func)()) {
    PyObject *capi_buildvalue = NULL;
    static char *capi_kwlist[] = {NULL};
    if (!FUNC0(capi_args,capi_keywds,\
                                     "|:mod.init",\
                                     capi_kwlist))
        goto capi_fail;
    (*f2py_func)();
    capi_buildvalue = FUNC1("");
 capi_fail:
    return capi_buildvalue;
}