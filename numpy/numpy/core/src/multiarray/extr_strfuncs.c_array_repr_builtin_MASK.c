#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/  elsize; } ;
typedef  int Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC11 (char*,int) ; 
 scalar_t__ FUNC12 (char**,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC13(PyArrayObject *self, int repr)
{
    PyObject *ret;
    char *string;
    /* max_n initial value is arbitrary, dump_data will extend it */
    Py_ssize_t n = 0, max_n = FUNC4(self) * 4 + 7;

    if ((string = FUNC8(max_n)) == NULL) {
        return FUNC9();
    }

    if (FUNC12(&string, &n, &max_n, FUNC0(self),
                  FUNC5(self), FUNC2(self),
                  FUNC6(self), self) < 0) {
        FUNC7(string);
        return NULL;
    }

    if (repr) {
        if (FUNC3(self)) {
            ret = FUNC10("array(%s, '%c%d')",
                                       string,
                                       FUNC1(self)->type,
                                       FUNC1(self)->elsize);
        }
        else {
            ret = FUNC10("array(%s, '%c')",
                                       string,
                                       FUNC1(self)->type);
        }
    }
    else {
        ret = FUNC11(string, n);
    }

    FUNC7(string);
    return ret;
}