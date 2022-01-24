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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const**) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static PyObject *
FUNC4(PyObject *self, PyObject *args)
{
	const char *str;
	char	   *quoted;
	PyObject   *ret;

	if (!FUNC0(args, "z:quote_nullable", &str))
		return NULL;

	if (str == NULL)
		return FUNC1("NULL");

	quoted = FUNC3(str);
	ret = FUNC1(quoted);
	FUNC2(quoted);

	return ret;
}