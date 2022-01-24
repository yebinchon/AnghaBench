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
typedef  int Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_SystemError ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(PyObject *names, PyObject* fields, PyObject* l)
{
    PyObject *key, *value, *foffset, *fdescr, *ftitle;
    Py_ssize_t pos = 0;
    int st;

    if (!FUNC6(names)) {
        FUNC3(PyExc_SystemError,
                "(Hash) names is not a tuple ???");
        return -1;
    }
    if (!FUNC1(fields)) {
        FUNC3(PyExc_SystemError,
                "(Hash) fields is not a dict ???");
        return -1;
    }

    for (pos = 0; pos < FUNC8(names); pos++) {
        /*
         * For each field, add the key + descr + offset to l
         */
        key = FUNC7(names, pos);
        value = FUNC2(fields, key);
        /* XXX: are those checks necessary ? */
        if (value == NULL) {
            FUNC3(PyExc_SystemError,
                    "(Hash) names and fields inconsistent ???");
            return -1;
        }
        if (!FUNC9(key)) {
            FUNC3(PyExc_SystemError,
                    "(Hash) key of dtype dict not a string ???");
            return -1;
        }
        if (!FUNC6(value)) {
            FUNC3(PyExc_SystemError,
                    "(Hash) value of dtype dict not a dtype ???");
            return -1;
        }
        if (FUNC8(value) < 2) {
            FUNC3(PyExc_SystemError,
                    "(Hash) Less than 2 items in dtype dict ???");
            return -1;
        }
        FUNC5(l, key);

        fdescr = FUNC7(value, 0);
        if (!FUNC0(fdescr)) {
            FUNC3(PyExc_SystemError,
                    "(Hash) First item in compound dtype tuple not a descr ???");
            return -1;
        }
        else {
            FUNC11(fdescr);
            st = FUNC12((PyArray_Descr*)fdescr, l);
            FUNC10(fdescr);
            if (st) {
                return -1;
            }
        }

        foffset = FUNC7(value, 1);
        if (!FUNC4(foffset)) {
            FUNC3(PyExc_SystemError,
                    "(Hash) Second item in compound dtype tuple not an int ???");
            return -1;
        }
        else {
            FUNC5(l, foffset);
        }

        if (FUNC8(value) > 2) {
            ftitle = FUNC7(value, 2);
            FUNC5(l, ftitle);
        }
    }

    return 0;
}