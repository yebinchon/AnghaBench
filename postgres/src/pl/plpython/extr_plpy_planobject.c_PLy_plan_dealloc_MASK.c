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
struct TYPE_8__ {int /*<<< orphan*/ * mcxt; int /*<<< orphan*/ * plan; } ;
struct TYPE_7__ {TYPE_1__* ob_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* tp_free ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ PyObject ;
typedef  TYPE_3__ PLyPlanObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC3(PyObject *arg)
{
	PLyPlanObject *ob = (PLyPlanObject *) arg;

	if (ob->plan)
	{
		FUNC1(ob->plan);
		ob->plan = NULL;
	}
	if (ob->mcxt)
	{
		FUNC0(ob->mcxt);
		ob->mcxt = NULL;
	}
	arg->ob_type->tp_free(arg);
}