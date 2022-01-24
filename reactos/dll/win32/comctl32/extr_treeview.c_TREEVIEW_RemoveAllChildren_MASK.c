#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ cChildren; int /*<<< orphan*/ * lastChild; struct TYPE_4__* firstChild; struct TYPE_4__* nextSibling; } ;
typedef  TYPE_1__ TREEVIEW_ITEM ;
typedef  int /*<<< orphan*/  TREEVIEW_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(TREEVIEW_INFO *infoPtr, const TREEVIEW_ITEM *parentItem)
{
    TREEVIEW_ITEM *kill = parentItem->firstChild;

    while (kill != NULL)
    {
	TREEVIEW_ITEM *next = kill->nextSibling;

	FUNC0(infoPtr, kill);

	kill = next;
    }

    FUNC1(parentItem->cChildren <= 0); /* I_CHILDRENCALLBACK or 0 */
    FUNC1(parentItem->firstChild == NULL);
    FUNC1(parentItem->lastChild == NULL);
}