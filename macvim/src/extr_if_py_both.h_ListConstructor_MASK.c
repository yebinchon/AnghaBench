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
typedef  int /*<<< orphan*/  list_T ;
typedef  int /*<<< orphan*/  PyTypeObject ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 

__attribute__((used)) static PyObject *
FUNC9(PyTypeObject *subtype, PyObject *args, PyObject *kwargs)
{
    list_T	*list;
    PyObject	*obj = NULL;

    if (kwargs)
    {
	FUNC4(PyExc_TypeError,
		FUNC1("list constructor does not accept keyword arguments"));
	return NULL;
    }

    if (!FUNC2(args, "|O", &obj))
	return NULL;

    if (!(list = FUNC8()))
	return NULL;

    if (obj)
    {
	PyObject	*lookup_dict;

	if (!(lookup_dict = FUNC3()))
	{
	    FUNC7(list);
	    return NULL;
	}

	if (FUNC6(list, obj, lookup_dict) == -1)
	{
	    FUNC5(lookup_dict);
	    FUNC7(list);
	    return NULL;
	}

	FUNC5(lookup_dict);
    }

    return FUNC0(subtype, list);
}