#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct TYPE_32__ {int /*<<< orphan*/  bRedraw; TYPE_1__* root; TYPE_1__* dropItem; TYPE_1__* insertMarkItem; TYPE_1__* selectedItem; TYPE_1__* firstVisible; } ;
struct TYPE_31__ {struct TYPE_31__* firstChild; struct TYPE_31__* parent; struct TYPE_31__* prevSibling; struct TYPE_31__* nextSibling; } ;
typedef  TYPE_1__ TREEVIEW_ITEM ;
typedef  TYPE_2__ TREEVIEW_INFO ;
typedef  scalar_t__ LRESULT ;
typedef  TYPE_1__* HTREEITEM ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  TVC_UNKNOWN ; 
 int /*<<< orphan*/  TVGN_CARET ; 
 TYPE_1__* TVI_ROOT ; 

__attribute__((used)) static LRESULT
FUNC15(TREEVIEW_INFO *infoPtr, HTREEITEM item)
{
    TREEVIEW_ITEM *newSelection = NULL;
    TREEVIEW_ITEM *newFirstVisible = NULL;
    TREEVIEW_ITEM *parent, *prev = NULL;
    BOOL visible = FALSE;

    if (item == TVI_ROOT || !item)
    {
	FUNC1("TVI_ROOT\n");
	parent = infoPtr->root;
	newSelection = NULL;
	visible = TRUE;
	FUNC10(infoPtr);
    }
    else
    {
	if (!FUNC13(infoPtr, item))
	    return FALSE;

	FUNC1("%p (%s)\n", item, FUNC7(item));
	parent = item->parent;

        if (FUNC0(item))
        {
            prev = FUNC3(infoPtr, item);
            visible = TRUE;
        }

	if (infoPtr->selectedItem != NULL
	    && (item == infoPtr->selectedItem
		|| FUNC6(item, infoPtr->selectedItem)))
	{
	    if (item->nextSibling)
		newSelection = item->nextSibling;
	    else if (item->parent != infoPtr->root)
		newSelection = item->parent;
            else
                newSelection = item->prevSibling;
            FUNC1("newSelection = %p\n", newSelection);
	}

	if (infoPtr->firstVisible == item)
	{
	    visible = TRUE;
	    if (item->nextSibling)
	       newFirstVisible = item->nextSibling;
	    else if (item->prevSibling)
	       newFirstVisible = item->prevSibling;
	    else if (item->parent != infoPtr->root)
	       newFirstVisible = item->parent;
	    FUNC11(infoPtr, NULL, TRUE);
	}
	else
	    newFirstVisible = infoPtr->firstVisible;

	FUNC9(infoPtr, item);
    }

    /* Don't change if somebody else already has (infoPtr->selectedItem is cleared by FreeItem). */
    if (!infoPtr->selectedItem && newSelection)
    {
	if (FUNC13(infoPtr, newSelection))
	    FUNC2(infoPtr, TVGN_CARET, newSelection, TVC_UNKNOWN);
    }

    /* Validate insertMark dropItem.
     * hotItem ??? - used for comparison only.
     */
    if (!FUNC13(infoPtr, infoPtr->insertMarkItem))
	infoPtr->insertMarkItem = 0;

    if (!FUNC13(infoPtr, infoPtr->dropItem))
	infoPtr->dropItem = 0;

    if (!FUNC13(infoPtr, newFirstVisible))
        newFirstVisible = infoPtr->root->firstChild;

    FUNC14(infoPtr);

    if (visible)
        FUNC11(infoPtr, newFirstVisible, TRUE);

    if (!infoPtr->bRedraw) return TRUE;

    if (visible)
    {
       FUNC8(infoPtr, prev);
       FUNC12(infoPtr);
       FUNC5(infoPtr, NULL);
    }
    else if (FUNC0(parent) && !FUNC4(infoPtr, parent))
    {
       /* parent lost '+/-' - update it */
       FUNC5(infoPtr, parent);
    }

    return TRUE;
}