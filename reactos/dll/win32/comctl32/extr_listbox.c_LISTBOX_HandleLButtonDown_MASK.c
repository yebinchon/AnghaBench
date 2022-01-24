#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int style; int captured; int anchor_item; int /*<<< orphan*/  owner; scalar_t__ self; TYPE_2__* lphc; TYPE_1__* items; scalar_t__ in_focus; int /*<<< orphan*/  caret_on; int /*<<< orphan*/  focus_item; } ;
struct TYPE_13__ {int x; int y; } ;
struct TYPE_12__ {scalar_t__ self; scalar_t__ hWndEdit; } ;
struct TYPE_11__ {int selected; } ;
typedef  TYPE_3__ POINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_4__ LB_DESCR ;
typedef  int INT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,TYPE_3__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int LBS_EXTENDEDSEL ; 
 int LBS_MULTIPLESEL ; 
 int LBS_NOTIFY ; 
 int FUNC2 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int MK_CONTROL ; 
 int MK_SHIFT ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  WM_BEGINDRAG ; 
 int /*<<< orphan*/  WM_LBTRACKPOINT ; 
 int WS_EX_DRAGDETECT ; 

__attribute__((used)) static LRESULT FUNC11( LB_DESCR *descr, DWORD keys, INT x, INT y )
{
    INT index = FUNC2( descr, x, y );

    FUNC10("[%p]: lbuttondown %d,%d item %d, focus item %d\n",
          descr->self, x, y, index, descr->focus_item);

    if (!descr->caret_on && (descr->in_focus)) return 0;

    if (!descr->in_focus)
    {
        if( !descr->lphc ) FUNC9( descr->self );
        else FUNC9( (descr->lphc->hWndEdit) ? descr->lphc->hWndEdit : descr->lphc->self );
    }

    if (index == -1) return 0;

    if (!descr->lphc)
    {
        if (descr->style & LBS_NOTIFY )
            FUNC7( descr->owner, WM_LBTRACKPOINT, index,
                            FUNC6( x, y ) );
    }

    descr->captured = TRUE;
    FUNC8( descr->self );

    if (descr->style & (LBS_EXTENDEDSEL | LBS_MULTIPLESEL))
    {
        /* we should perhaps make sure that all items are deselected
           FIXME: needed for !LBS_EXTENDEDSEL, too ?
           if (!(keys & (MK_SHIFT|MK_CONTROL)))
           LISTBOX_SetSelection( descr, -1, FALSE, FALSE);
        */

        if (!(keys & MK_SHIFT)) descr->anchor_item = index;
        if (keys & MK_CONTROL)
        {
            FUNC4( descr, index, FALSE );
            FUNC5( descr, index,
                                  !descr->items[index].selected,
                                  (descr->style & LBS_NOTIFY) != 0);
        }
        else
        {
            FUNC3( descr, index, FALSE );

            if (descr->style & LBS_EXTENDEDSEL)
            {
                FUNC5( descr, index,
                               descr->items[index].selected,
                              (descr->style & LBS_NOTIFY) != 0 );
            }
            else
            {
                FUNC5( descr, index,
                               !descr->items[index].selected,
                              (descr->style & LBS_NOTIFY) != 0 );
            }
        }
    }
    else
    {
        descr->anchor_item = index;
        FUNC3( descr, index, FALSE );
        FUNC5( descr, index,
                              TRUE, (descr->style & LBS_NOTIFY) != 0 );
    }

    if (!descr->lphc)
    {
        if (FUNC1( descr->self, GWL_EXSTYLE ) & WS_EX_DRAGDETECT)
        {
            POINT pt;

	    pt.x = x;
	    pt.y = y;

            if (FUNC0( descr->self, pt ))
                FUNC7( descr->owner, WM_BEGINDRAG, 0, 0 );
        }
    }
    return 0;
}