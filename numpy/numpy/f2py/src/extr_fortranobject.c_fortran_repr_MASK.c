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
typedef  int /*<<< orphan*/  PyFortranObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC10(PyFortranObject *fp)
{
    PyObject *name = NULL, *repr = NULL;
    name = FUNC1((PyObject *)fp, "__name__");
    FUNC0();
#if PY_VERSION_HEX >= 0x03000000
    if (name != NULL && PyUnicode_Check(name)) {
        repr = PyUnicode_FromFormat("<fortran %U>", name);
    }
    else {
        repr = PyUnicode_FromString("<fortran object>");
    }
#else
    if (name != NULL && FUNC3(name)) {
        repr = FUNC4("<fortran %s>", FUNC2(name));
    }
    else {
        repr = FUNC5("<fortran object>");
    }
#endif
    FUNC9(name);
    return repr;
}