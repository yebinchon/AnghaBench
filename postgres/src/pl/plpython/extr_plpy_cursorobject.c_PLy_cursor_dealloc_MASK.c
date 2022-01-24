#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int closed; int /*<<< orphan*/ * mcxt; int /*<<< orphan*/  portalname; } ;
struct TYPE_7__ {TYPE_1__* ob_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* tp_free ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ PyObject ;
typedef  int /*<<< orphan*/  Portal ;
typedef  TYPE_3__ PLyCursorObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(PyObject *arg)
{
	PLyCursorObject *cursor;
	Portal		portal;

	cursor = (PLyCursorObject *) arg;

	if (!cursor->closed)
	{
		portal = FUNC0(cursor->portalname);

		if (FUNC2(portal))
		{
			FUNC4(portal);
			FUNC3(portal);
		}
		cursor->closed = true;
	}
	if (cursor->mcxt)
	{
		FUNC1(cursor->mcxt);
		cursor->mcxt = NULL;
	}
	arg->ob_type->tp_free(arg);
}