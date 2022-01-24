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
struct TYPE_3__ {scalar_t__ parent; struct TYPE_3__ const* nextSibling; struct TYPE_3__ const* prevSibling; struct TYPE_3__ const* lastChild; struct TYPE_3__ const* firstChild; } ;
typedef  TYPE_1__ TREEVIEW_ITEM ;
typedef  int /*<<< orphan*/  TREEVIEW_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(TREEVIEW_INFO *infoPtr,
					     const TREEVIEW_ITEM *item)
{
    FUNC0(infoPtr != NULL);
    FUNC0(item != NULL);

    /* both NULL, or both non-null */
    FUNC0((item->firstChild == NULL) == (item->lastChild == NULL));

    FUNC0(item->firstChild != item);
    FUNC0(item->lastChild != item);

    if (item->firstChild)
    {
	FUNC0(item->firstChild->parent == item);
	FUNC0(item->firstChild->prevSibling == NULL);
    }

    if (item->lastChild)
    {
	FUNC0(item->lastChild->parent == item);
	FUNC0(item->lastChild->nextSibling == NULL);
    }

    FUNC0(item->nextSibling != item);
    if (item->nextSibling)
    {
	FUNC0(item->nextSibling->parent == item->parent);
	FUNC0(item->nextSibling->prevSibling == item);
    }

    FUNC0(item->prevSibling != item);
    if (item->prevSibling)
    {
	FUNC0(item->prevSibling->parent == item->parent);
	FUNC0(item->prevSibling->nextSibling == item);
    }
}