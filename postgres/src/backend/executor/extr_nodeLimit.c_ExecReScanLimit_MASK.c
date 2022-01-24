#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * chgParam; } ;
struct TYPE_6__ {TYPE_5__* lefttree; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
typedef  TYPE_2__ LimitState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

void
FUNC2(LimitState *node)
{
	/*
	 * Recompute limit/offset in case parameters changed, and reset the state
	 * machine.  We must do this before rescanning our child node, in case
	 * it's a Sort that we are passing the parameters down to.
	 */
	FUNC1(node);

	/*
	 * if chgParam of subnode is not null then plan will be re-scanned by
	 * first ExecProcNode.
	 */
	if (node->ps.lefttree->chgParam == NULL)
		FUNC0(node->ps.lefttree);
}