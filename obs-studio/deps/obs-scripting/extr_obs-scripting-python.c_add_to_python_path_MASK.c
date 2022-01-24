#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t num; char** array; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__,char**) ; 
 scalar_t__ FUNC7 () ; 
 TYPE_1__ python_paths ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 

__attribute__((used)) static void FUNC9(const char *path)
{
	PyObject *py_path_str = NULL;
	PyObject *py_path = NULL;
	int ret;

	if (!path || !*path)
		return;

	for (size_t i = 0; i < python_paths.num; i++) {
		const char *python_path = python_paths.array[i];
		if (FUNC8(path, python_path) == 0)
			return;
	}

	ret = FUNC1("import sys");
	if (FUNC7() || ret != 0)
		goto fail;

	/* borrowed reference here */
	py_path = FUNC2("path");
	if (FUNC7() || !py_path)
		goto fail;

	py_path_str = FUNC3(path);
	ret = FUNC0(py_path, py_path_str);
	if (FUNC7() || ret != 0)
		goto fail;

	char *new_path = FUNC5(path);
	FUNC6(python_paths, &new_path);

fail:
	FUNC4(py_path_str);
}