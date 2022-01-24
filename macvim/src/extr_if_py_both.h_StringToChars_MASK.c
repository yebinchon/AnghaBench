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
 int /*<<< orphan*/  ENC_OPT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char_u *
FUNC8(PyObject *obj, PyObject **todecref)
{
    char_u	*str;

    if (FUNC2(obj))
    {

	if (FUNC1(obj, (char **) &str, NULL) == -1
		|| str == NULL)
	    return NULL;

	*todecref = NULL;
    }
    else if (FUNC5(obj))
    {
	PyObject	*bytes;

	if (!(bytes = FUNC4(obj, ENC_OPT, NULL)))
	    return NULL;

	if(FUNC1(bytes, (char **) &str, NULL) == -1
		|| str == NULL)
	{
	    FUNC6(bytes);
	    return NULL;
	}

	*todecref = bytes;
    }
    else
    {
#if PY_MAJOR_VERSION < 3
	FUNC3(PyExc_TypeError,
		FUNC0("expected str() or unicode() instance, but got %s"),
		FUNC7(obj));
#else
	PyErr_FORMAT(PyExc_TypeError,
		N_("expected bytes() or str() instance, but got %s"),
		Py_TYPE_NAME(obj));
#endif
	return NULL;
    }

    return (char_u *) str;
}