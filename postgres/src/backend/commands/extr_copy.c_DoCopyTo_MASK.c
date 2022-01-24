#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_6__ {int /*<<< orphan*/ * filename; } ;
typedef  TYPE_1__* CopyState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ DestRemote ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ whereToSendOutput ; 

__attribute__((used)) static uint64
FUNC8(CopyState cstate)
{
	bool		pipe = (cstate->filename == NULL);
	bool		fe_copy = (pipe && whereToSendOutput == DestRemote);
	uint64		processed;

	FUNC4();
	{
		if (fe_copy)
			FUNC5(cstate);

		processed = FUNC0(cstate);

		if (fe_copy)
			FUNC6(cstate);
	}
	FUNC1();
	{
		/*
		 * Make sure we turn off old-style COPY OUT mode upon error. It is
		 * okay to do this in all cases, since it does nothing if the mode is
		 * not on.
		 */
		FUNC7(true);
		FUNC3();
	}
	FUNC2();

	return processed;
}