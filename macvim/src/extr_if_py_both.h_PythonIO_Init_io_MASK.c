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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Error ; 
 int /*<<< orphan*/  Output ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(void)
{
    if (FUNC2("stdout", (PyObject *)(void *)&Output))
	return -1;
    if (FUNC2("stderr", (PyObject *)(void *)&Error))
	return -1;

    if (FUNC1())
    {
	FUNC0(FUNC3("E264: Python: Error initialising I/O objects"));
	return -1;
    }

    return 0;
}