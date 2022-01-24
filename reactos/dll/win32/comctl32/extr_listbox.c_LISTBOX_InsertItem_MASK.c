#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  void* ULONG_PTR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_20__ {int focus_item; int nb_items; int style; int item_height; int selected_item; int /*<<< orphan*/  self; int /*<<< orphan*/  owner; TYPE_2__* items; } ;
struct TYPE_19__ {int height; int /*<<< orphan*/  selected; void* data; scalar_t__ str; } ;
struct TYPE_18__ {int itemID; int itemHeight; void* itemData; int /*<<< orphan*/  CtlID; int /*<<< orphan*/  CtlType; } ;
typedef  TYPE_1__ MEASUREITEMSTRUCT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ LPWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_2__ LB_ITEMDATA ;
typedef  TYPE_3__ LB_DESCR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GWLP_ID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ ISWIN31 ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  LBN_ERRSPACE ; 
 int LBS_OWNERDRAWVARIABLE ; 
 scalar_t__ LB_ARRAY_GRANULARITY ; 
 int /*<<< orphan*/  LB_ERR ; 
 int /*<<< orphan*/  LB_ERRSPACE ; 
 int /*<<< orphan*/  LB_OKAY ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  ODT_LISTBOX ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_MEASUREITEM ; 
 char* FUNC15 (scalar_t__) ; 

__attribute__((used)) static LRESULT FUNC16( LB_DESCR *descr, INT index,
                                   LPWSTR str, ULONG_PTR data )
{
    LB_ITEMDATA *item;
    INT max_items;
    INT oldfocus = descr->focus_item;

    if (index == -1) index = descr->nb_items;
    else if ((index < 0) || (index > descr->nb_items)) return LB_ERR;
    if (!descr->items) max_items = 0;
    else max_items = FUNC5( FUNC0(), 0, descr->items ) / sizeof(*item);
    if (descr->nb_items == max_items)
    {
        /* We need to grow the array */
        max_items += LB_ARRAY_GRANULARITY;
	if (descr->items)
	    item = FUNC4( FUNC0(), 0, descr->items,
                                  max_items * sizeof(LB_ITEMDATA) );
	else
	    item = FUNC3( FUNC0(), 0,
                                  max_items * sizeof(LB_ITEMDATA) );
        if (!item)
        {
            FUNC12( descr, LBN_ERRSPACE );
            return LB_ERRSPACE;
        }
        descr->items = item;
    }

    /* Insert the item structure */

    item = &descr->items[index];
    if (index < descr->nb_items)
        FUNC11( item + 1, item,
                       (descr->nb_items - index) * sizeof(LB_ITEMDATA) );
    item->str      = str;
    item->data     = FUNC2(descr) ? 0 : data;
    item->height   = 0;
    item->selected = FALSE;
    descr->nb_items++;

    /* Get item height */

    if (descr->style & LBS_OWNERDRAWVARIABLE)
    {
        MEASUREITEMSTRUCT mis;
        UINT id = (UINT)FUNC1( descr->self, GWLP_ID );

        mis.CtlType    = ODT_LISTBOX;
        mis.CtlID      = id;
        mis.itemID     = index;
        mis.itemData   = data;
        mis.itemHeight = descr->item_height;
        FUNC13( descr->owner, WM_MEASUREITEM, id, (LPARAM)&mis );
        item->height = mis.itemHeight ? mis.itemHeight : 1;
        FUNC14("[%p]: measure item %d (%s) = %d\n",
              descr->self, index, str ? FUNC15(str) : "", item->height );
    }

    /* Repaint the items */

    FUNC10( descr );
    FUNC7( descr, index );

    /* Move selection and focused item */
    /* If listbox was empty, set focus to the first item */
    if (descr->nb_items == 1)
         FUNC8( descr, 0, FALSE );
    /* single select don't change selection index in win31 */
    else if ((ISWIN31) && !(FUNC6(descr)))
    {
        descr->selected_item++;
        FUNC9( descr, descr->selected_item-1, TRUE, FALSE );
    }
    else
    {
        if (index <= descr->selected_item)
        {
            descr->selected_item++;
            descr->focus_item = oldfocus; /* focus not changed */
        }
    }
    return LB_OKAY;
}