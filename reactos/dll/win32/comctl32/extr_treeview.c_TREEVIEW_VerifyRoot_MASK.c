#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* root; } ;
struct TYPE_8__ {int iLevel; int /*<<< orphan*/ * prevSibling; int /*<<< orphan*/ * parent; } ;
typedef  TYPE_1__ TREEVIEW_ITEM ;
typedef  TYPE_2__ TREEVIEW_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline void
FUNC3(TREEVIEW_INFO *infoPtr)
{
    TREEVIEW_ITEM *root = infoPtr->root;

    FUNC2(root != NULL);
    FUNC2(root->iLevel == -1);
    FUNC2(root->parent == NULL);
    FUNC2(root->prevSibling == NULL);

    FUNC1(infoPtr, root);

    FUNC0(infoPtr, root);
}