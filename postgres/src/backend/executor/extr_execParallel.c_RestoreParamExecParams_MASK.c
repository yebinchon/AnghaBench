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
struct TYPE_5__ {TYPE_1__* es_param_exec_vals; } ;
struct TYPE_4__ {int /*<<< orphan*/ * execPlan; int /*<<< orphan*/  isnull; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ ParamExecData ;
typedef  TYPE_2__ EState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*,char*,int) ; 

__attribute__((used)) static void
FUNC2(char *start_address, EState *estate)
{
	int			nparams;
	int			i;
	int			paramid;

	FUNC1(&nparams, start_address, sizeof(int));
	start_address += sizeof(int);

	for (i = 0; i < nparams; i++)
	{
		ParamExecData *prm;

		/* Read paramid */
		FUNC1(&paramid, start_address, sizeof(int));
		start_address += sizeof(int);
		prm = &(estate->es_param_exec_vals[paramid]);

		/* Read datum/isnull. */
		prm->value = FUNC0(&start_address, &prm->isnull);
		prm->execPlan = NULL;
	}
}