#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * chgParam; } ;
struct TYPE_5__ {TYPE_4__* lefttree; } ;
struct TYPE_6__ {int rs_done; int rs_checkqual; TYPE_1__ ps; int /*<<< orphan*/ * resconstantqual; } ;
typedef  TYPE_2__ ResultState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 

void
FUNC1(ResultState *node)
{
	node->rs_done = false;
	node->rs_checkqual = (node->resconstantqual == NULL) ? false : true;

	/*
	 * If chgParam of subnode is not null then plan will be re-scanned by
	 * first ExecProcNode.
	 */
	if (node->ps.lefttree &&
		node->ps.lefttree->chgParam == NULL)
		FUNC0(node->ps.lefttree);
}