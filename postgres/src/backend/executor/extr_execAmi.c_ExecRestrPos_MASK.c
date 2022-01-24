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
typedef  int /*<<< orphan*/  SortState ;
typedef  int /*<<< orphan*/  ResultState ;
typedef  int /*<<< orphan*/  PlanState ;
typedef  int /*<<< orphan*/  MaterialState ;
typedef  int /*<<< orphan*/  IndexScanState ;
typedef  int /*<<< orphan*/  IndexOnlyScanState ;
typedef  int /*<<< orphan*/  CustomScanState ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
#define  T_CustomScanState 133 
#define  T_IndexOnlyScanState 132 
#define  T_IndexScanState 131 
#define  T_MaterialState 130 
#define  T_ResultState 129 
#define  T_SortState 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(PlanState *node)
{
	switch (FUNC7(node))
	{
		case T_IndexScanState:
			FUNC2((IndexScanState *) node);
			break;

		case T_IndexOnlyScanState:
			FUNC1((IndexOnlyScanState *) node);
			break;

		case T_CustomScanState:
			FUNC0((CustomScanState *) node);
			break;

		case T_MaterialState:
			FUNC3((MaterialState *) node);
			break;

		case T_SortState:
			FUNC5((SortState *) node);
			break;

		case T_ResultState:
			FUNC4((ResultState *) node);
			break;

		default:
			FUNC6(ERROR, "unrecognized node type: %d", (int) FUNC7(node));
			break;
	}
}