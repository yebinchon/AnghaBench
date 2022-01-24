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
 int /*<<< orphan*/  PYTHON_API_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VimMethods ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vim_module ; 

__attribute__((used)) static int
FUNC5(void)
{
    /* The special value is removed from sys.path in Python_Init(). */
    static char	*(argv[2]) = {"/must>not&exist/foo", NULL};

    if (FUNC3())
	return -1;

    /* Set sys.argv[] to avoid a crash in warn(). */
    FUNC0(1, argv);

    vim_module = FUNC1("vim", VimMethods, (char *)NULL,
				(PyObject *)NULL, PYTHON_API_VERSION);

    if (FUNC4(vim_module))
	return -1;

    if (FUNC2())
	return -1;

    return 0;
}