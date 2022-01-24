#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  step_id; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  PartitionPruneStepOp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  cmpfns ; 
 int /*<<< orphan*/  exprs ; 
 int /*<<< orphan*/  nullkeys ; 
 int /*<<< orphan*/  opstrategy ; 
 TYPE_1__ step ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const PartitionPruneStepOp *node)
{
	FUNC3("PARTITIONPRUNESTEPOP");

	FUNC1(step.step_id);
	FUNC1(opstrategy);
	FUNC2(exprs);
	FUNC2(cmpfns);
	FUNC0(nullkeys);
}