#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ running; } ;
struct TYPE_8__ {TYPE_5__* instrument; } ;
typedef  TYPE_1__ PlanState ;
typedef  int /*<<< orphan*/  HashState ;
typedef  int /*<<< orphan*/  HashJoinState ;
typedef  int /*<<< orphan*/  GatherState ;
typedef  int /*<<< orphan*/  GatherMergeState ;
typedef  int /*<<< orphan*/  ForeignScanState ;
typedef  int /*<<< orphan*/  CustomScanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
#define  T_CustomScanState 133 
#define  T_ForeignScanState 132 
#define  T_GatherMergeState 131 
#define  T_GatherState 130 
#define  T_HashJoinState 129 
#define  T_HashState 128 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int (*) (TYPE_1__*),int /*<<< orphan*/ *) ; 

bool
FUNC11(PlanState *node)
{
	if (node == NULL)
		return false;

	FUNC8();

	FUNC10(node, ExecShutdownNode, NULL);

	/*
	 * Treat the node as running while we shut it down, but only if it's run
	 * at least once already.  We don't expect much CPU consumption during
	 * node shutdown, but in the case of Gather or Gather Merge, we may shut
	 * down workers at this stage.  If so, their buffer usage will get
	 * propagated into pgBufferUsage at this point, and we want to make sure
	 * that it gets associated with the Gather node.  We skip this if the node
	 * has never been executed, so as to avoid incorrectly making it appear
	 * that it has.
	 */
	if (node->instrument && node->instrument->running)
		FUNC6(node->instrument);

	switch (FUNC9(node))
	{
		case T_GatherState:
			FUNC2((GatherState *) node);
			break;
		case T_ForeignScanState:
			FUNC1((ForeignScanState *) node);
			break;
		case T_CustomScanState:
			FUNC0((CustomScanState *) node);
			break;
		case T_GatherMergeState:
			FUNC3((GatherMergeState *) node);
			break;
		case T_HashState:
			FUNC4((HashState *) node);
			break;
		case T_HashJoinState:
			FUNC5((HashJoinState *) node);
			break;
		default:
			break;
	}

	/* Stop the node if we started it above, reporting 0 tuples. */
	if (node->instrument && node->instrument->running)
		FUNC7(node->instrument, 0);

	return false;
}