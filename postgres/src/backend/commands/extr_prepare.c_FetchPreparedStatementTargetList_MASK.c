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
struct TYPE_3__ {int /*<<< orphan*/  plansource; } ;
typedef  TYPE_1__ PreparedStatement ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

List *
FUNC2(PreparedStatement *stmt)
{
	List	   *tlist;

	/* Get the plan's primary targetlist */
	tlist = FUNC0(stmt->plansource, NULL);

	/* Copy into caller's context in case plan gets invalidated */
	return FUNC1(tlist);
}