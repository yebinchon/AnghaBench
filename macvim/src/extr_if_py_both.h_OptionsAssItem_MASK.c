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
struct TYPE_3__ {scalar_t__ opt_type; int /*<<< orphan*/  from; scalar_t__ (* Check ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ OptionsObject ;

/* Variables and functions */
 scalar_t__ NUL ; 
 int /*<<< orphan*/  NUMBER_INT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,long*,int /*<<< orphan*/ ) ; 
 int OPT_GLOBAL ; 
 int OPT_LOCAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyExc_KeyError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RAISE_NO_EMPTY_KEYS ; 
 int SOPT_BOOL ; 
 int SOPT_GLOBAL ; 
 int SOPT_NUM ; 
 scalar_t__ SREQ_GLOBAL ; 
 scalar_t__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC7 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__*,int,scalar_t__*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(OptionsObject *self, PyObject *keyObject, PyObject *valObject)
{
    char_u	*key;
    int		flags;
    int		opt_flags;
    int		ret = 0;
    PyObject	*todecref;

    if (self->Check(self->from))
	return -1;

    if (!(key = FUNC6(keyObject, &todecref)))
	return -1;

    if (*key == NUL)
    {
	RAISE_NO_EMPTY_KEYS;
	FUNC5(todecref);
	return -1;
    }

    flags = FUNC7(key, NULL, NULL,
				    self->opt_type, self->from);

    if (flags == 0)
    {
	FUNC3(PyExc_KeyError, keyObject);
	FUNC5(todecref);
	return -1;
    }

    if (valObject == NULL)
    {
	if (self->opt_type == SREQ_GLOBAL)
	{
	    FUNC2(PyExc_ValueError,
		    FUNC0("unable to unset global option %s"), key);
	    FUNC5(todecref);
	    return -1;
	}
	else if (!(flags & SOPT_GLOBAL))
	{
	    FUNC2(PyExc_ValueError,
		    FUNC0("unable to unset option %s "
		       "which does not have global value"), key);
	    FUNC5(todecref);
	    return -1;
	}
	else
	{
	    FUNC10(key, self->from);
	    FUNC5(todecref);
	    return 0;
	}
    }

    opt_flags = (self->opt_type ? OPT_LOCAL : OPT_GLOBAL);

    if (flags & SOPT_BOOL)
    {
	int	istrue = FUNC4(valObject);

	if (istrue == -1)
	    ret = -1;
	else
	    ret = FUNC8(key, istrue, NULL,
				    opt_flags, self->opt_type, self->from);
    }
    else if (flags & SOPT_NUM)
    {
	long	val;

	if (FUNC1(valObject, &val, NUMBER_INT))
	{
	    FUNC5(todecref);
	    return -1;
	}

	ret = FUNC8(key, (int) val, NULL, opt_flags,
				self->opt_type, self->from);
    }
    else
    {
	char_u		*val;
	PyObject	*todecref2;

	if ((val = FUNC6(valObject, &todecref2)))
	{
	    ret = FUNC8(key, 0, val, opt_flags,
				    self->opt_type, self->from);
	    FUNC5(todecref2);
	}
	else
	    ret = -1;
    }

    FUNC5(todecref);

    return ret;
}