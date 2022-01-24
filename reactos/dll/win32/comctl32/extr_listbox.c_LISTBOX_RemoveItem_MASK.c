#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t nb_items; size_t anchor_item; size_t page_size; size_t selected_item; int focus_item; int /*<<< orphan*/ * items; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LB_ITEMDATA ;
typedef  TYPE_1__ LB_DESCR ;
typedef  size_t INT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ISWIN31 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int LB_ARRAY_GRANULARITY ; 
 int /*<<< orphan*/  LB_ERR ; 
 int /*<<< orphan*/  LB_OKAY ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT FUNC10( LB_DESCR *descr, INT index )
{
    LB_ITEMDATA *item;
    INT max_items;

    if ((index < 0) || (index >= descr->nb_items)) return LB_ERR;

    /* We need to invalidate the original rect instead of the updated one. */
    FUNC5( descr, index );

    descr->nb_items--;
    FUNC4( descr, index );

    if (!descr->nb_items) return LB_OKAY;

    /* Remove the item */

    item = &descr->items[index];
    if (index < descr->nb_items)
        FUNC9( item, item + 1,
                       (descr->nb_items - index) * sizeof(LB_ITEMDATA) );
    if (descr->anchor_item == descr->nb_items) descr->anchor_item--;

    /* Shrink the item array if possible */

    max_items = FUNC2( FUNC0(), 0, descr->items ) / sizeof(LB_ITEMDATA);
    if (descr->nb_items < max_items - 2*LB_ARRAY_GRANULARITY)
    {
        max_items -= LB_ARRAY_GRANULARITY;
        item = FUNC1( FUNC0(), 0, descr->items,
                            max_items * sizeof(LB_ITEMDATA) );
        if (item) descr->items = item;
    }
    /* Repaint the items */

    FUNC8( descr );
    /* if we removed the scrollbar, reset the top of the list
      (correct for owner-drawn ???) */
    if (descr->nb_items == descr->page_size)
        FUNC7( descr, 0, TRUE );

    /* Move selection and focused item */
    if (!FUNC3(descr))
    {
        if (index == descr->selected_item)
            descr->selected_item = -1;
        else if (index < descr->selected_item)
        {
            descr->selected_item--;
            if (ISWIN31) /* win 31 do not change the selected item number */
               FUNC6( descr, descr->selected_item + 1, TRUE, FALSE);
        }
    }

    if (descr->focus_item >= descr->nb_items)
    {
          descr->focus_item = descr->nb_items - 1;
          if (descr->focus_item < 0) descr->focus_item = 0;
    }
    return LB_OKAY;
}