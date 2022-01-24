#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mon_info ;
struct TYPE_14__ {int bottom; int top; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_18__ {scalar_t__ self; int wState; scalar_t__ droppedIndex; scalar_t__ hWndLBox; int dwStyle; int visibleItems; TYPE_1__ droppedRect; } ;
struct TYPE_15__ {scalar_t__ bottom; int /*<<< orphan*/  top; } ;
struct TYPE_17__ {int cbSize; TYPE_2__ rcWork; } ;
struct TYPE_16__ {int bottom; int top; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_3__ RECT ;
typedef  TYPE_4__ MONITORINFO ;
typedef  TYPE_5__* LPHEADCOMBO ;
typedef  int /*<<< orphan*/  HMONITOR ;

/* Variables and functions */
 int CBF_CAPTURE ; 
 int CBF_DROPPED ; 
 int CBF_NOREDRAW ; 
 int /*<<< orphan*/  CBN_DROPDOWN ; 
 scalar_t__ CBS_DROPDOWN ; 
 int CBS_NOINTEGRALHEIGHT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  HWND_TOPMOST ; 
 int /*<<< orphan*/  LB_CARETON ; 
 scalar_t__ LB_ERR ; 
 int /*<<< orphan*/  LB_GETCOUNT ; 
 int /*<<< orphan*/  LB_GETCURSEL ; 
 int /*<<< orphan*/  LB_GETITEMHEIGHT ; 
 int /*<<< orphan*/  LB_SETTOPINDEX ; 
 int /*<<< orphan*/  MONITOR_DEFAULTTOPRIMARY ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int RDW_ERASE ; 
 int RDW_INVALIDATE ; 
 int RDW_NOCHILDREN ; 
 int RDW_UPDATENOW ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int SWP_NOACTIVATE ; 
 int SWP_SHOWWINDOW ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC16 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC18( LPHEADCOMBO lphc )
{
    HMONITOR monitor;
    MONITORINFO mon_info;
   RECT rect,r;
   int nItems;
   int nDroppedHeight;

   FUNC15("[%p]: drop down\n", lphc->self);

   FUNC3( lphc, CBN_DROPDOWN );

   /* set selection */

   lphc->wState |= CBF_DROPPED;
   if( FUNC2(lphc) == CBS_DROPDOWN )
   {
       lphc->droppedIndex = FUNC1( lphc, TRUE );

       /* Update edit only if item is in the list */
       if( !(lphc->wState & CBF_CAPTURE) && lphc->droppedIndex >= 0)
	 FUNC0( lphc, lphc->droppedIndex );
   }
   else
   {
       lphc->droppedIndex = FUNC12(lphc->hWndLBox, LB_GETCURSEL, 0, 0);

       FUNC12(lphc->hWndLBox, LB_SETTOPINDEX,
                    lphc->droppedIndex == LB_ERR ? 0 : lphc->droppedIndex, 0);
       FUNC12(lphc->hWndLBox, LB_CARETON, 0, 0);
   }

   /* now set popup position */
   FUNC9( lphc->self, &rect );

   /*
    * If it's a dropdown, the listbox is offset
    */
   if( FUNC2(lphc) == CBS_DROPDOWN )
     rect.left += FUNC4();

  /* if the dropped height is greater than the total height of the dropped
     items list, then force the drop down list height to be the total height
     of the items in the dropped list */

  /* And Remove any extra space (Best Fit) */
   nDroppedHeight = lphc->droppedRect.bottom - lphc->droppedRect.top;
  /* if listbox length has been set directly by its handle */
   FUNC9(lphc->hWndLBox, &r);
   if (nDroppedHeight < r.bottom - r.top)
       nDroppedHeight = r.bottom - r.top;
   nItems = (int)FUNC12(lphc->hWndLBox, LB_GETCOUNT, 0, 0);

   if (nItems > 0)
   {
        int nIHeight = (int)FUNC12(lphc->hWndLBox, LB_GETITEMHEIGHT, 0, 0);

        if (lphc->dwStyle & CBS_NOINTEGRALHEIGHT)
        {
            nDroppedHeight -= 1;
        }
        else
        {
            if (nItems > lphc->visibleItems)
                nItems = lphc->visibleItems;
            nDroppedHeight = nItems * nIHeight + FUNC5();
        }
   }

   r.left = rect.left;
   r.top = rect.bottom;
   r.right = r.left + lphc->droppedRect.right - lphc->droppedRect.left;
   r.bottom = r.top + nDroppedHeight;

   /*If height of dropped rectangle gets beyond a screen size it should go up, otherwise down.*/
   monitor = FUNC10( &rect, MONITOR_DEFAULTTOPRIMARY );
   mon_info.cbSize = sizeof(mon_info);
   FUNC8( monitor, &mon_info );

   if (r.bottom > mon_info.rcWork.bottom)
   {
       r.top = FUNC16( rect.top - nDroppedHeight, mon_info.rcWork.top );
       r.bottom = FUNC17( r.top + nDroppedHeight, mon_info.rcWork.bottom );
   }

   FUNC14( lphc->hWndLBox, HWND_TOPMOST, r.left, r.top, r.right - r.left, r.bottom - r.top,
                 SWP_NOACTIVATE | SWP_SHOWWINDOW );


   if( !(lphc->wState & CBF_NOREDRAW) )
     FUNC11( lphc->self, NULL, 0, RDW_INVALIDATE |
			   RDW_ERASE | RDW_UPDATENOW | RDW_NOCHILDREN );

   FUNC6( lphc->hWndLBox, TRUE );
   if (FUNC7() != lphc->self)
      FUNC13(lphc->hWndLBox);
}