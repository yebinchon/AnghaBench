
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_7__ {int wState; int droppedRect; int textRect; int buttonRect; int self; int hWndLBox; int hWndEdit; scalar_t__ hFont; } ;
typedef TYPE_1__* LPHEADCOMBO ;
typedef scalar_t__ HFONT ;
typedef int BOOL ;


 int CBCalcPlacement (int ,TYPE_1__*,int *,int *,int *) ;
 int CBF_EDIT ;
 int CBForceDummyResize (TYPE_1__*) ;
 int CBResetPos (TYPE_1__*,int *,int *,int ) ;
 scalar_t__ CBS_SIMPLE ;
 scalar_t__ CB_GETTYPE (TYPE_1__*) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;
 int WM_SETFONT ;

__attribute__((used)) static void COMBO_Font( LPHEADCOMBO lphc, HFONT hFont, BOOL bRedraw )
{



  lphc->hFont = hFont;




  if( lphc->wState & CBF_EDIT )
      SendMessageW(lphc->hWndEdit, WM_SETFONT, (WPARAM)hFont, bRedraw);
  SendMessageW(lphc->hWndLBox, WM_SETFONT, (WPARAM)hFont, bRedraw);




  if ( CB_GETTYPE(lphc) == CBS_SIMPLE)
  {
    CBCalcPlacement(lphc->self,
      lphc,
      &lphc->textRect,
      &lphc->buttonRect,
      &lphc->droppedRect);

    CBResetPos( lphc, &lphc->textRect, &lphc->droppedRect, TRUE );
  }
  else
  {
    CBForceDummyResize(lphc);
  }
}
