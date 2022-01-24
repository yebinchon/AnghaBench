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
struct TYPE_3__ {int target; } ;
typedef  TYPE_1__ DiscardStmt ;

/* Variables and functions */
#define  DISCARD_ALL 131 
#define  DISCARD_PLANS 130 
#define  DISCARD_SEQUENCES 129 
#define  DISCARD_TEMP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC5(DiscardStmt *stmt, bool isTopLevel)
{
	switch (stmt->target)
	{
		case DISCARD_ALL:
			FUNC0(isTopLevel);
			break;

		case DISCARD_PLANS:
			FUNC1();
			break;

		case DISCARD_SEQUENCES:
			FUNC2();
			break;

		case DISCARD_TEMP:
			FUNC3();
			break;

		default:
			FUNC4(ERROR, "unrecognized DISCARD target: %d", stmt->target);
	}
}