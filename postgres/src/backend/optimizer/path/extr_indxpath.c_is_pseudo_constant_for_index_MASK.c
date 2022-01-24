#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* rel; } ;
struct TYPE_4__ {int /*<<< orphan*/  relid; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_2__ IndexOptInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool
FUNC3(Node *expr, IndexOptInfo *index)
{
	/* pull_varnos is cheaper than volatility check, so do that first */
	if (FUNC0(index->rel->relid, FUNC2(expr)))
		return false;			/* no good, contains Var of table */
	if (FUNC1(expr))
		return false;			/* no good, volatile comparison value */
	return true;
}