#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  copycontext; int /*<<< orphan*/ * filename; int /*<<< orphan*/  copy_file; scalar_t__ is_program; } ;
typedef  TYPE_1__* CopyState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(CopyState cstate)
{
	if (cstate->is_program)
	{
		FUNC0(cstate);
	}
	else
	{
		if (cstate->filename != NULL && FUNC1(cstate->copy_file))
			FUNC3(ERROR,
					(FUNC4(),
					 FUNC5("could not close file \"%s\": %m",
							cstate->filename)));
	}

	FUNC2(cstate->copycontext);
	FUNC6(cstate);
}