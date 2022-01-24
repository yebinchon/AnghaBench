#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  items; } ;
struct TYPE_10__ {scalar_t__ iLevel; struct TYPE_10__ const* parent; } ;
typedef  TYPE_1__ TREEVIEW_ITEM ;
typedef  TYPE_2__ TREEVIEW_INFO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline void
FUNC4(TREEVIEW_INFO *infoPtr, const TREEVIEW_ITEM *item)
{
    FUNC3(item != NULL);

    FUNC3(item->parent != NULL);
    FUNC3(item->parent != item);
    FUNC3(item->iLevel == item->parent->iLevel + 1);

    FUNC3(FUNC0(infoPtr->items, item) != -1);

    FUNC2(infoPtr, item);

    FUNC1(infoPtr, item);
}