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
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  py_getcwd ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC11(PyObject *_chdir, PyObject *args, PyObject *kwargs)
{
    PyObject	*ret;
    PyObject	*newwd;
    PyObject	*todecref;
    char_u	*new_dir;

    if (_chdir == NULL)
	return NULL;
    if (!(ret = FUNC2(_chdir, args, kwargs)))
	return NULL;

    if (!(newwd = FUNC3(py_getcwd, NULL)))
    {
	FUNC4(ret);
	return NULL;
    }

    if (!(new_dir = FUNC6(newwd, &todecref)))
    {
	FUNC4(ret);
	FUNC4(newwd);
	return NULL;
    }

    FUNC8();

    if (FUNC10(new_dir))
    {
	FUNC4(ret);
	FUNC4(newwd);
	FUNC5(todecref);

	if (FUNC7())
	    return NULL;

	FUNC1(FUNC0("failed to change directory"));
	return NULL;
    }

    FUNC4(newwd);
    FUNC5(todecref);

    FUNC9(FALSE);

    if (FUNC7())
    {
	FUNC4(ret);
	return NULL;
    }

    return ret;
}