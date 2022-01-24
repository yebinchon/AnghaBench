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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const**) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static PyObject *FUNC4(PyObject *self, PyObject *args)
{
	const char *name;
	if (!FUNC2(args, "s", &name))
		return FUNC3();

	FUNC0(self);

	FUNC1(name);
	return FUNC3();
}