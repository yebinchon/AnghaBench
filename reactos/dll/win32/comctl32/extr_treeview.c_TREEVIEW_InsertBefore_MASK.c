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
struct TYPE_5__ {struct TYPE_5__* lastChild; struct TYPE_5__* firstChild; struct TYPE_5__* nextSibling; struct TYPE_5__* prevSibling; struct TYPE_5__* parent; } ;
typedef  TYPE_1__ TREEVIEW_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void
FUNC1(TREEVIEW_ITEM *newItem, TREEVIEW_ITEM *sibling,
		      TREEVIEW_ITEM *parent)
{
    FUNC0(parent != NULL);

    if (sibling != NULL)
    {
	FUNC0(sibling->parent == parent);

	if (sibling->prevSibling != NULL)
	    sibling->prevSibling->nextSibling = newItem;

	newItem->prevSibling = sibling->prevSibling;
	sibling->prevSibling = newItem;
    }
    else
       newItem->prevSibling = NULL;

    newItem->nextSibling = sibling;

    if (parent->firstChild == sibling)
	parent->firstChild = newItem;

    if (parent->lastChild == NULL)
	parent->lastChild = newItem;
}