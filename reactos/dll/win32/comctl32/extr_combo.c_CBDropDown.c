
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int mon_info ;
struct TYPE_14__ {int bottom; int top; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_18__ {scalar_t__ self; int wState; scalar_t__ droppedIndex; scalar_t__ hWndLBox; int dwStyle; int visibleItems; TYPE_1__ droppedRect; } ;
struct TYPE_15__ {scalar_t__ bottom; int top; } ;
struct TYPE_17__ {int cbSize; TYPE_2__ rcWork; } ;
struct TYPE_16__ {int bottom; int top; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_3__ RECT ;
typedef TYPE_4__ MONITORINFO ;
typedef TYPE_5__* LPHEADCOMBO ;
typedef int HMONITOR ;


 int CBF_CAPTURE ;
 int CBF_DROPPED ;
 int CBF_NOREDRAW ;
 int CBN_DROPDOWN ;
 scalar_t__ CBS_DROPDOWN ;
 int CBS_NOINTEGRALHEIGHT ;
 int CBUpdateEdit (TYPE_5__*,scalar_t__) ;
 scalar_t__ CBUpdateLBox (TYPE_5__*,int ) ;
 scalar_t__ CB_GETTYPE (TYPE_5__*) ;
 int CB_NOTIFY (TYPE_5__*,int ) ;
 scalar_t__ COMBO_EDITBUTTONSPACE () ;
 int COMBO_YBORDERSIZE () ;
 int EnableWindow (scalar_t__,int ) ;
 scalar_t__ GetCapture () ;
 int GetMonitorInfoW (int ,TYPE_4__*) ;
 int GetWindowRect (scalar_t__,TYPE_3__*) ;
 int HWND_TOPMOST ;
 int LB_CARETON ;
 scalar_t__ LB_ERR ;
 int LB_GETCOUNT ;
 int LB_GETCURSEL ;
 int LB_GETITEMHEIGHT ;
 int LB_SETTOPINDEX ;
 int MONITOR_DEFAULTTOPRIMARY ;
 int MonitorFromRect (TYPE_3__*,int ) ;
 int RDW_ERASE ;
 int RDW_INVALIDATE ;
 int RDW_NOCHILDREN ;
 int RDW_UPDATENOW ;
 int RedrawWindow (scalar_t__,int *,int ,int) ;
 int SWP_NOACTIVATE ;
 int SWP_SHOWWINDOW ;
 scalar_t__ SendMessageW (scalar_t__,int ,scalar_t__,int ) ;
 int SetCapture (scalar_t__) ;
 int SetWindowPos (scalar_t__,int ,scalar_t__,int,scalar_t__,scalar_t__,int) ;
 int TRACE (char*,scalar_t__) ;
 int TRUE ;
 int max (int,int ) ;
 scalar_t__ min (int,scalar_t__) ;

__attribute__((used)) static void CBDropDown( LPHEADCOMBO lphc )
{
    HMONITOR monitor;
    MONITORINFO mon_info;
   RECT rect,r;
   int nItems;
   int nDroppedHeight;

   TRACE("[%p]: drop down\n", lphc->self);

   CB_NOTIFY( lphc, CBN_DROPDOWN );



   lphc->wState |= CBF_DROPPED;
   if( CB_GETTYPE(lphc) == CBS_DROPDOWN )
   {
       lphc->droppedIndex = CBUpdateLBox( lphc, TRUE );


       if( !(lphc->wState & CBF_CAPTURE) && lphc->droppedIndex >= 0)
  CBUpdateEdit( lphc, lphc->droppedIndex );
   }
   else
   {
       lphc->droppedIndex = SendMessageW(lphc->hWndLBox, LB_GETCURSEL, 0, 0);

       SendMessageW(lphc->hWndLBox, LB_SETTOPINDEX,
                    lphc->droppedIndex == LB_ERR ? 0 : lphc->droppedIndex, 0);
       SendMessageW(lphc->hWndLBox, LB_CARETON, 0, 0);
   }


   GetWindowRect( lphc->self, &rect );




   if( CB_GETTYPE(lphc) == CBS_DROPDOWN )
     rect.left += COMBO_EDITBUTTONSPACE();






   nDroppedHeight = lphc->droppedRect.bottom - lphc->droppedRect.top;

   GetWindowRect(lphc->hWndLBox, &r);
   if (nDroppedHeight < r.bottom - r.top)
       nDroppedHeight = r.bottom - r.top;
   nItems = (int)SendMessageW(lphc->hWndLBox, LB_GETCOUNT, 0, 0);

   if (nItems > 0)
   {
        int nIHeight = (int)SendMessageW(lphc->hWndLBox, LB_GETITEMHEIGHT, 0, 0);

        if (lphc->dwStyle & CBS_NOINTEGRALHEIGHT)
        {
            nDroppedHeight -= 1;
        }
        else
        {
            if (nItems > lphc->visibleItems)
                nItems = lphc->visibleItems;
            nDroppedHeight = nItems * nIHeight + COMBO_YBORDERSIZE();
        }
   }

   r.left = rect.left;
   r.top = rect.bottom;
   r.right = r.left + lphc->droppedRect.right - lphc->droppedRect.left;
   r.bottom = r.top + nDroppedHeight;


   monitor = MonitorFromRect( &rect, MONITOR_DEFAULTTOPRIMARY );
   mon_info.cbSize = sizeof(mon_info);
   GetMonitorInfoW( monitor, &mon_info );

   if (r.bottom > mon_info.rcWork.bottom)
   {
       r.top = max( rect.top - nDroppedHeight, mon_info.rcWork.top );
       r.bottom = min( r.top + nDroppedHeight, mon_info.rcWork.bottom );
   }

   SetWindowPos( lphc->hWndLBox, HWND_TOPMOST, r.left, r.top, r.right - r.left, r.bottom - r.top,
                 SWP_NOACTIVATE | SWP_SHOWWINDOW );


   if( !(lphc->wState & CBF_NOREDRAW) )
     RedrawWindow( lphc->self, ((void*)0), 0, RDW_INVALIDATE |
      RDW_ERASE | RDW_UPDATENOW | RDW_NOCHILDREN );

   EnableWindow( lphc->hWndLBox, TRUE );
   if (GetCapture() != lphc->self)
      SetCapture(lphc->hWndLBox);
}
