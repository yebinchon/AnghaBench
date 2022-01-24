#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char** argnames; int /*<<< orphan*/  globals; } ;
struct TYPE_6__ {int nargs; scalar_t__ args; scalar_t__* namedargs; } ;
typedef  TYPE_1__ PLySavedArgs ;
typedef  TYPE_2__ PLyProcedure ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(PLyProcedure *proc, PLySavedArgs *savedargs)
{
	/* Restore named arguments into their slots in the globals dict */
	if (proc->argnames)
	{
		int			i;

		for (i = 0; i < savedargs->nargs; i++)
		{
			if (proc->argnames[i] && savedargs->namedargs[i])
			{
				FUNC0(proc->globals, proc->argnames[i],
									 savedargs->namedargs[i]);
				FUNC1(savedargs->namedargs[i]);
			}
		}
	}

	/* Restore the "args" object, too */
	if (savedargs->args)
	{
		FUNC0(proc->globals, "args", savedargs->args);
		FUNC1(savedargs->args);
	}

	/* And free the PLySavedArgs struct */
	FUNC2(savedargs);
}