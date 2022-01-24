#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int natts; } ;
struct TYPE_6__ {int /*<<< orphan*/  atttypmod; } ;
struct TYPE_5__ {TYPE_4__* tupdesc; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PLyResultObject ;
typedef  TYPE_2__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  PLy_exc_error ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_4__*,int) ; 

__attribute__((used)) static PyObject *
FUNC5(PyObject *self, PyObject *unused)
{
	PLyResultObject *ob = (PLyResultObject *) self;
	PyObject   *list;
	int			i;

	if (!ob->tupdesc)
	{
		FUNC0(PLy_exc_error, "command did not produce a result set");
		return NULL;
	}

	list = FUNC2(ob->tupdesc->natts);
	if (!list)
		return NULL;
	for (i = 0; i < ob->tupdesc->natts; i++)
	{
		Form_pg_attribute attr = FUNC4(ob->tupdesc, i);

		FUNC3(list, i, FUNC1(attr->atttypmod));
	}

	return list;
}