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
struct TYPE_5__ {TYPE_1__* parallelSlot; } ;
struct TYPE_4__ {int /*<<< orphan*/  pipeWrite; } ;
typedef  TYPE_2__ ParallelState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3(ParallelState *pstate, int worker, const char *str)
{
	int			len = FUNC2(str) + 1;

	if (FUNC1(pstate->parallelSlot[worker].pipeWrite, str, len) != len)
	{
		FUNC0("could not write to the communication channel: %m");
	}
}