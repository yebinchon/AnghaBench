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
typedef  int /*<<< orphan*/  PartitionPruneStepCombine ;

/* Variables and functions */
 int /*<<< orphan*/  PartitionPruneCombineOp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  combineOp ; 
 int /*<<< orphan*/  source_stepids ; 
 TYPE_1__ step ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const PartitionPruneStepCombine *node)
{
	FUNC3("PARTITIONPRUNESTEPCOMBINE");

	FUNC1(step.step_id);
	FUNC0(combineOp, PartitionPruneCombineOp);
	FUNC2(source_stepids);
}