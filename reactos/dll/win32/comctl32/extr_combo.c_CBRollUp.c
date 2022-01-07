
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wState; scalar_t__ hWndLBox; int textRect; int buttonRect; int self; } ;
typedef int RECT ;
typedef TYPE_1__* LPHEADCOMBO ;
typedef int INT ;
typedef int HWND ;
typedef scalar_t__ BOOL ;


 int CBF_DROPPED ;
 int CBF_NOREDRAW ;
 int CBN_CLOSEUP ;
 int CBN_SELENDCANCEL ;
 int CBN_SELENDOK ;
 scalar_t__ CBS_DROPDOWN ;
 scalar_t__ CBS_SIMPLE ;
 scalar_t__ CB_GETTYPE (TYPE_1__*) ;
 int CB_NOTIFY (TYPE_1__*,int ) ;
 scalar_t__ GetCapture () ;
 scalar_t__ IsWindow (int ) ;
 int RDW_ERASE ;
 int RDW_INVALIDATE ;
 int RDW_NOCHILDREN ;
 int RDW_UPDATENOW ;
 int RedrawWindow (int ,int *,int ,int) ;
 int ReleaseCapture () ;
 int SW_HIDE ;
 int ShowWindow (scalar_t__,int ) ;
 int TRACE (char*,int ,scalar_t__,int ) ;
 scalar_t__ TRUE ;
 int UnionRect (int *,int *,int *) ;

__attribute__((used)) static void CBRollUp( LPHEADCOMBO lphc, BOOL ok, BOOL bButton )
{
   HWND hWnd = lphc->self;

   TRACE("[%p]: sel ok? [%i] dropped? [%i]\n",
  lphc->self, ok, (INT)(lphc->wState & CBF_DROPPED));

   CB_NOTIFY( lphc, (ok) ? CBN_SELENDOK : CBN_SELENDCANCEL );

   if( IsWindow( hWnd ) && CB_GETTYPE(lphc) != CBS_SIMPLE )
   {

       if( lphc->wState & CBF_DROPPED )
       {
    RECT rect;

    lphc->wState &= ~CBF_DROPPED;
    ShowWindow( lphc->hWndLBox, SW_HIDE );

           if(GetCapture() == lphc->hWndLBox)
           {
               ReleaseCapture();
           }

    if( CB_GETTYPE(lphc) == CBS_DROPDOWN )
    {
        rect = lphc->buttonRect;
    }
    else
           {
        if( bButton )
        {
   UnionRect( &rect,
       &lphc->buttonRect,
       &lphc->textRect);
        }
        else
   rect = lphc->textRect;

        bButton = TRUE;
    }

    if( bButton && !(lphc->wState & CBF_NOREDRAW) )
        RedrawWindow( hWnd, &rect, 0, RDW_INVALIDATE |
          RDW_ERASE | RDW_UPDATENOW | RDW_NOCHILDREN );
    CB_NOTIFY( lphc, CBN_CLOSEUP );
       }
   }
}
