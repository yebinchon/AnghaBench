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
typedef  int /*<<< orphan*/  NPY_BUSDAY_ROLL ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_BUSDAY_BACKWARD ; 
 int /*<<< orphan*/  NPY_BUSDAY_FOLLOWING ; 
 int /*<<< orphan*/  NPY_BUSDAY_FORWARD ; 
 int /*<<< orphan*/  NPY_BUSDAY_MODIFIEDFOLLOWING ; 
 int /*<<< orphan*/  NPY_BUSDAY_MODIFIEDPRECEDING ; 
 int /*<<< orphan*/  NPY_BUSDAY_NAT ; 
 int /*<<< orphan*/  NPY_BUSDAY_PRECEDING ; 
 int /*<<< orphan*/  NPY_BUSDAY_RAISE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char**,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static int
FUNC7(PyObject *roll_in, NPY_BUSDAY_ROLL *roll)
{
    PyObject *obj = roll_in;
    char *str;
    Py_ssize_t len;

    /* Make obj into an ASCII string */
    FUNC5(obj);
    if (FUNC3(obj)) {
        /* accept unicode input */
        PyObject *obj_str;
        obj_str = FUNC2(obj);
        if (obj_str == NULL) {
            FUNC4(obj);
            return 0;
        }
        FUNC4(obj);
        obj = obj_str;
    }

    if (FUNC0(obj, &str, &len) < 0) {
        FUNC4(obj);
        return 0;
    }

    /* Use switch statements to quickly isolate the right enum value */
    switch (str[0]) {
        case 'b':
            if (FUNC6(str, "backward") == 0) {
                *roll = NPY_BUSDAY_BACKWARD;
                goto finish;
            }
            break;
        case 'f':
            if (len > 2) switch (str[2]) {
                case 'r':
                    if (FUNC6(str, "forward") == 0) {
                        *roll = NPY_BUSDAY_FORWARD;
                        goto finish;
                    }
                    break;
                case 'l':
                    if (FUNC6(str, "following") == 0) {
                        *roll = NPY_BUSDAY_FOLLOWING;
                        goto finish;
                    }
                    break;
            }
            break;
        case 'm':
            if (len > 8) switch (str[8]) {
                case 'f':
                    if (FUNC6(str, "modifiedfollowing") == 0) {
                        *roll = NPY_BUSDAY_MODIFIEDFOLLOWING;
                        goto finish;
                    }
                    break;
                case 'p':
                    if (FUNC6(str, "modifiedpreceding") == 0) {
                        *roll = NPY_BUSDAY_MODIFIEDPRECEDING;
                        goto finish;
                    }
                    break;
            }
            break;
        case 'n':
            if (FUNC6(str, "nat") == 0) {
                *roll = NPY_BUSDAY_NAT;
                goto finish;
            }
            break;
        case 'p':
            if (FUNC6(str, "preceding") == 0) {
                *roll = NPY_BUSDAY_PRECEDING;
                goto finish;
            }
            break;
        case 'r':
            if (FUNC6(str, "raise") == 0) {
                *roll = NPY_BUSDAY_RAISE;
                goto finish;
            }
            break;
    }

    FUNC1(PyExc_ValueError,
            "Invalid business day roll parameter \"%s\"",
            str);
    FUNC4(obj);
    return 0;

finish:
    FUNC4(obj);
    return 1;
}