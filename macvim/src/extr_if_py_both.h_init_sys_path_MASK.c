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
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  vim_module ; 
 int /*<<< orphan*/ * vim_special_path_object ; 

__attribute__((used)) static int
FUNC14(void)
{
    PyObject	*path;
    PyObject	*path_hook;
    PyObject	*path_hooks;

    if (!(path_hook = FUNC6(vim_module, "path_hook")))
	return -1;

    if (!(path_hooks = FUNC7("path_hooks")))
    {
	FUNC1();
	path_hooks = FUNC4(1);
	FUNC5(path_hooks, 0, path_hook);
	if (FUNC8("path_hooks", path_hooks))
	{
	    FUNC9(path_hooks);
	    return -1;
	}
	FUNC9(path_hooks);
    }
    else if (FUNC3(path_hooks))
    {
	if (FUNC2(path_hooks, path_hook))
	{
	    FUNC9(path_hook);
	    return -1;
	}
	FUNC9(path_hook);
    }
    else
    {
	FUNC12();
	FUNC0(FUNC13("Failed to set path hook: sys.path_hooks is not a list\n"
	       "You should now do the following:\n"
	       "- append vim.path_hook to sys.path_hooks\n"
	       "- append vim.VIM_SPECIAL_PATH to sys.path\n"));
	FUNC11(); /* Discard the error */
	FUNC9(path_hook);
	return 0;
    }

    if (!(path = FUNC7("path")))
    {
	FUNC1();
	path = FUNC4(1);
	FUNC10(vim_special_path_object);
	FUNC5(path, 0, vim_special_path_object);
	if (FUNC8("path", path))
	{
	    FUNC9(path);
	    return -1;
	}
	FUNC9(path);
    }
    else if (FUNC3(path))
    {
	if (FUNC2(path, vim_special_path_object))
	    return -1;
    }
    else
    {
	FUNC12();
	FUNC0(FUNC13("Failed to set path: sys.path is not a list\n"
	       "You should now append vim.VIM_SPECIAL_PATH to sys.path"));
	FUNC11(); /* Discard the error */
    }

    return 0;
}