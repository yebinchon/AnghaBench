#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ParallelContext ; 
 int /*<<< orphan*/  WARNING ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  node ; 
 int pcxt ; 
 int /*<<< orphan*/  pcxt_list ; 

void
FUNC4(bool isCommit)
{
	while (!FUNC2(&pcxt_list))
	{
		ParallelContext *pcxt;

		pcxt = FUNC1(ParallelContext, node, &pcxt_list);
		if (isCommit)
			FUNC3(WARNING, "leaked parallel context");
		FUNC0(pcxt);
	}
}