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
struct TYPE_5__ {int /*<<< orphan*/  oldowner; int /*<<< orphan*/  oldcontext; } ;
struct TYPE_4__ {int exited; int /*<<< orphan*/  started; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PLySubtransactionObject ;
typedef  TYPE_2__ PLySubtransactionData ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ explicit_subtransactions ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static PyObject *
FUNC8(PyObject *self, PyObject *args)
{
	PyObject   *type;
	PyObject   *value;
	PyObject   *traceback;
	PLySubtransactionData *subxactdata;
	PLySubtransactionObject *subxact = (PLySubtransactionObject *) self;

	if (!FUNC2(args, "OOO", &type, &value, &traceback))
		return NULL;

	if (!subxact->started)
	{
		FUNC1(PyExc_ValueError, "this subtransaction has not been entered");
		return NULL;
	}

	if (subxact->exited)
	{
		FUNC1(PyExc_ValueError, "this subtransaction has already been exited");
		return NULL;
	}

	if (explicit_subtransactions == NIL)
	{
		FUNC1(PyExc_ValueError, "there is no subtransaction to exit from");
		return NULL;
	}

	subxact->exited = true;

	if (type != Py_None)
	{
		/* Abort the inner transaction */
		FUNC4();
	}
	else
	{
		FUNC3();
	}

	subxactdata = (PLySubtransactionData *) FUNC5(explicit_subtransactions);
	explicit_subtransactions = FUNC6(explicit_subtransactions);

	FUNC0(subxactdata->oldcontext);
	CurrentResourceOwner = subxactdata->oldowner;
	FUNC7(subxactdata);

	Py_RETURN_NONE;
}