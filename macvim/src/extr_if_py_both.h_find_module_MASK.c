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
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,char*,int,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  py_find_module ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static PyObject *
FUNC6(char *fullname, char *tail, PyObject *new_path)
{
    PyObject	*find_module_result;
    PyObject	*module;
    char	*dot;

    if ((dot = (char *)FUNC5((char_u *) tail, '.')))
    {
	/*
	 * There is a dot in the name: call find_module recursively without the
	 * first component
	 */
	PyObject	*newest_path;
	int		partlen = (int) (dot - 1 - tail);

	if (!(find_module_result = FUNC0(py_find_module,
			"s#O", tail, partlen, new_path)))
	    return NULL;

	if (!(module = FUNC4(
			fullname,
			((int) (tail - fullname)) + partlen,
			find_module_result)))
	{
	    FUNC2(find_module_result);
	    return NULL;
	}

	FUNC2(find_module_result);

	if (!(newest_path = FUNC1(module, "__path__")))
	{
	    FUNC2(module);
	    return NULL;
	}

	FUNC2(module);

	module = FUNC6(fullname, dot + 1, newest_path);

	FUNC2(newest_path);

	return module;
    }
    else
    {
	if (!(find_module_result = FUNC0(py_find_module,
			"sO", tail, *new_path)))
	    return NULL;

	if (!(module = FUNC4(
			fullname,
			(int)FUNC3(fullname),
			find_module_result)))
	{
	    FUNC2(find_module_result);
	    return NULL;
	}

	FUNC2(find_module_result);

	return module;
    }
}