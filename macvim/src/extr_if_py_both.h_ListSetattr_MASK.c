#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* list; } ;
struct TYPE_4__ {scalar_t__ lv_lock; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ ListObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ VAR_FIXED ; 
 scalar_t__ VAR_LOCKED ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(ListObject *self, char *name, PyObject *valObject)
{
    if (valObject == NULL)
    {
	FUNC2(PyExc_AttributeError,
		FUNC0("cannot delete vim.List attributes"));
	return -1;
    }

    if (FUNC4(name, "locked") == 0)
    {
	if (self->list->lv_lock == VAR_FIXED)
	{
	    FUNC2(PyExc_TypeError, FUNC0("cannot modify fixed list"));
	    return -1;
	}
	else
	{
	    int		istrue = FUNC3(valObject);
	    if (istrue == -1)
		return -1;
	    else if (istrue)
		self->list->lv_lock = VAR_LOCKED;
	    else
		self->list->lv_lock = 0;
	}
	return 0;
    }
    else
    {
	FUNC1(PyExc_AttributeError, FUNC0("cannot set attribute %s"), name);
	return -1;
    }
}