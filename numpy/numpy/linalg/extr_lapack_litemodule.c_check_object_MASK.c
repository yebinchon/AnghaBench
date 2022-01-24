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
 int /*<<< orphan*/  LapackError ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*,...) ; 

__attribute__((used)) static int
FUNC5(PyObject *ob, int t, char *obname,
                        char *tname, char *funname)
{
    if (!FUNC0(ob)) {
        FUNC4(LapackError,
                     "Expected an array for parameter %s in lapack_lite.%s",
                     obname, funname);
        return 0;
    }
    else if (!FUNC2((PyArrayObject *)ob)) {
        FUNC4(LapackError,
                     "Parameter %s is not contiguous in lapack_lite.%s",
                     obname, funname);
        return 0;
    }
    else if (!(FUNC3((PyArrayObject *)ob) == t)) {
        FUNC4(LapackError,
                     "Parameter %s is not of type %s in lapack_lite.%s",
                     obname, tname, funname);
        return 0;
    }
    else if (FUNC1((PyArrayObject *)ob)) {
        FUNC4(LapackError,
                     "Parameter %s has non-native byte order in lapack_lite.%s",
                     obname, funname);
        return 0;
    }
    else {
        return 1;
    }
}