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
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC5(PyObject *dict, char *name, PyObject *obj)
{
    if (obj==NULL) {
        FUNC4(stderr, "Error loading %s\n", name);
        if (FUNC2()) {
            FUNC3();
            FUNC1();
        }
        return -1;
    }
    return FUNC0(dict, name, obj);
}