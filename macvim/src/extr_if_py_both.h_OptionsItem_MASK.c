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
typedef  scalar_t__ char_u ;
struct TYPE_3__ {int /*<<< orphan*/  from; int /*<<< orphan*/  opt_type; scalar_t__ (* Check ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ OptionsObject ;

/* Variables and functions */
 scalar_t__ NUL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyExc_KeyError ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/ * FUNC5 (long) ; 
 int /*<<< orphan*/ * Py_False ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/ * Py_True ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RAISE_NO_EMPTY_KEYS ; 
 int SOPT_BOOL ; 
 int SOPT_NUM ; 
 int SOPT_STRING ; 
 int SOPT_UNSET ; 
 scalar_t__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC9 (scalar_t__*,long*,scalar_t__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*) ; 

__attribute__((used)) static PyObject *
FUNC12(OptionsObject *self, PyObject *keyObject)
{
    char_u	*key;
    int		flags;
    long	numval;
    char_u	*stringval;
    PyObject	*todecref;

    if (self->Check(self->from))
	return NULL;

    if (!(key = FUNC8(keyObject, &todecref)))
	return NULL;

    if (*key == NUL)
    {
	RAISE_NO_EMPTY_KEYS;
	FUNC7(todecref);
	return NULL;
    }

    flags = FUNC9(key, &numval, &stringval,
				    self->opt_type, self->from);

    FUNC7(todecref);

    if (flags == 0)
    {
	FUNC4(PyExc_KeyError, keyObject);
	return NULL;
    }

    if (flags & SOPT_UNSET)
    {
	FUNC6(Py_None);
	return Py_None;
    }
    else if (flags & SOPT_BOOL)
    {
	PyObject	*ret;
	ret = numval ? Py_True : Py_False;
	FUNC6(ret);
	return ret;
    }
    else if (flags & SOPT_NUM)
	return FUNC5(numval);
    else if (flags & SOPT_STRING)
    {
	if (stringval)
	{
	    PyObject	*ret = FUNC1((char *)stringval);
	    FUNC11(stringval);
	    return ret;
	}
	else
	{
	    FUNC2(PyExc_RuntimeError,
		    FUNC0("unable to get option value"));
	    return NULL;
	}
    }
    else
    {
	FUNC3(FUNC0("internal error: unknown option type"));
	return NULL;
    }
}