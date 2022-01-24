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
struct TYPE_5__ {int /*<<< orphan*/ * chgParam; } ;
typedef  TYPE_1__ PlanState ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  HashState ;
typedef  int /*<<< orphan*/  BitmapOrState ;
typedef  int /*<<< orphan*/  BitmapIndexScanState ;
typedef  int /*<<< orphan*/  BitmapAndState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
#define  T_BitmapAndState 131 
#define  T_BitmapIndexScanState 130 
#define  T_BitmapOrState 129 
#define  T_HashState 128 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (TYPE_1__*) ; 

Node *
FUNC9(PlanState *node)
{
	Node	   *result;

	FUNC6();

	FUNC0();

	if (node->chgParam != NULL) /* something changed */
		FUNC1(node);		/* let ReScan handle this */

	switch (FUNC8(node))
	{
			/*
			 * Only node types that actually support multiexec will be listed
			 */

		case T_HashState:
			result = FUNC5((HashState *) node);
			break;

		case T_BitmapIndexScanState:
			result = FUNC3((BitmapIndexScanState *) node);
			break;

		case T_BitmapAndState:
			result = FUNC2((BitmapAndState *) node);
			break;

		case T_BitmapOrState:
			result = FUNC4((BitmapOrState *) node);
			break;

		default:
			FUNC7(ERROR, "unrecognized node type: %d", (int) FUNC8(node));
			result = NULL;
			break;
	}

	return result;
}