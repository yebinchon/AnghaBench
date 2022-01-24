#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int maxVisibleOrder; TYPE_1__* root; } ;
struct TYPE_15__ {int visibleOrder; scalar_t__ iIntegral; } ;
struct TYPE_14__ {TYPE_2__* firstChild; } ;
typedef  TYPE_2__ TREEVIEW_ITEM ;
typedef  TYPE_3__ TREEVIEW_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(TREEVIEW_INFO *infoPtr, TREEVIEW_ITEM *start)
{
    TREEVIEW_ITEM *item;
    int order;

    if (!start)
    {
	start = infoPtr->root->firstChild;
	order = 0;
    }
    else
	order = start->visibleOrder;

    for (item = start; item != NULL;
         item = FUNC3(infoPtr, item))
    {
	if (!FUNC0(item) && order > 0)
		FUNC1(infoPtr, item);
	item->visibleOrder = order;
	order += item->iIntegral;
    }

    infoPtr->maxVisibleOrder = order;

    for (item = start; item != NULL;
	 item = FUNC3(infoPtr, item))
    {
	FUNC2(infoPtr, item);
    }
}