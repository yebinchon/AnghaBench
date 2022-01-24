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
struct TYPE_3__ {scalar_t__ pre_visit; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ RTreeVisitor ;
typedef  scalar_t__ RTreeNodeVisitCb ;
typedef  int /*<<< orphan*/  RTree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ trace_traverse_pre ; 

__attribute__((used)) static void FUNC3 (RTree *t) {
	RTreeVisitor vis = { 0 };

	/* clear the line on stderr, because somebody has written there */
	FUNC1 (stderr, "\x1b[2K\r");
	FUNC0 (stderr);
	vis.pre_visit = (RTreeNodeVisitCb)trace_traverse_pre;
	FUNC2 (t, &vis);
}