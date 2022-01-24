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
typedef  enum _actions { ____Placeholder__actions } _actions ;
struct TYPE_5__ {TYPE_1__* tail; TYPE_1__* head; } ;
struct TYPE_4__ {int action; struct TYPE_4__* next; int /*<<< orphan*/ * val; } ;
typedef  TYPE_1__ SimpleActionListCell ;
typedef  TYPE_2__ SimpleActionList ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 

__attribute__((used)) static void
FUNC2(SimpleActionList *list,
						  enum _actions action, const char *val)
{
	SimpleActionListCell *cell;

	cell = (SimpleActionListCell *) FUNC0(sizeof(SimpleActionListCell));

	cell->next = NULL;
	cell->action = action;
	if (val)
		cell->val = FUNC1(val);
	else
		cell->val = NULL;

	if (list->tail)
		list->tail->next = cell;
	else
		list->head = cell;
	list->tail = cell;
}