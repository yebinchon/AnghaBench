#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  nparts; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ PartitionedRelPruneInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exec_pruning_steps ; 
 int /*<<< orphan*/  execparamids ; 
 int /*<<< orphan*/  initial_pruning_steps ; 
 int /*<<< orphan*/  nparts ; 
 int /*<<< orphan*/  present_parts ; 
 int /*<<< orphan*/  relid_map ; 
 int /*<<< orphan*/  rtindex ; 
 int /*<<< orphan*/  subpart_map ; 
 int /*<<< orphan*/  subplan_map ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const PartitionedRelPruneInfo *node)
{
	FUNC4("PARTITIONEDRELPRUNEINFO");

	FUNC6(rtindex);
	FUNC0(present_parts);
	FUNC2(nparts);
	FUNC1(subplan_map, node->nparts);
	FUNC1(subpart_map, node->nparts);
	FUNC5(relid_map, node->nparts);
	FUNC3(initial_pruning_steps);
	FUNC3(exec_pruning_steps);
	FUNC0(execparamids);
}