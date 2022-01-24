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
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static PyObject *
FUNC3(PyObject *self, PyObject *args)
{
	const char *str;
	const char *quoted;
	PyObject   *ret;

	if (!FUNC0(args, "s:quote_ident", &str))
		return NULL;

	quoted = FUNC2(str);
	ret = FUNC1(quoted);

	return ret;
}