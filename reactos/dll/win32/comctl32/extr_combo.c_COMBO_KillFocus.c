
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int wState; int textRect; int self; int hWndLBox; } ;
typedef TYPE_1__* LPHEADCOMBO ;
typedef int HWND ;


 int CBF_EDIT ;
 int CBF_FOCUSED ;
 int CBN_KILLFOCUS ;
 int CBRollUp (TYPE_1__*,int ,int ) ;
 scalar_t__ CBS_DROPDOWNLIST ;
 scalar_t__ CB_GETTYPE (TYPE_1__*) ;
 int CB_NOTIFY (TYPE_1__*,int ) ;
 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 scalar_t__ IsWindow (int ) ;
 int LB_CARETOFF ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static void COMBO_KillFocus( LPHEADCOMBO lphc )
{
   HWND hWnd = lphc->self;

   if( lphc->wState & CBF_FOCUSED )
   {
       CBRollUp( lphc, FALSE, TRUE );
       if( IsWindow( hWnd ) )
       {
           if( CB_GETTYPE(lphc) == CBS_DROPDOWNLIST )
               SendMessageW(lphc->hWndLBox, LB_CARETOFF, 0, 0);

    lphc->wState &= ~CBF_FOCUSED;


    if( !(lphc->wState & CBF_EDIT) )
      InvalidateRect(lphc->self, &lphc->textRect, TRUE);

           CB_NOTIFY( lphc, CBN_KILLFOCUS );
       }
   }
}
