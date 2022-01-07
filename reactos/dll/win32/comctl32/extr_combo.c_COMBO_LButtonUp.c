
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int wState; int hWndLBox; } ;
typedef TYPE_1__* LPHEADCOMBO ;
typedef scalar_t__ INT ;


 int CBF_BUTTONDOWN ;
 int CBF_CAPTURE ;
 int CBF_NOLBSELECT ;
 int CBRepaintButton (TYPE_1__*) ;
 scalar_t__ CBS_DROPDOWN ;
 int CBUpdateEdit (TYPE_1__*,scalar_t__) ;
 scalar_t__ CBUpdateLBox (TYPE_1__*,int ) ;
 scalar_t__ CB_GETTYPE (TYPE_1__*) ;
 int ReleaseCapture () ;
 int SetCapture (int ) ;
 int TRUE ;

__attribute__((used)) static void COMBO_LButtonUp( LPHEADCOMBO lphc )
{
   if( lphc->wState & CBF_CAPTURE )
   {
       lphc->wState &= ~CBF_CAPTURE;
       if( CB_GETTYPE(lphc) == CBS_DROPDOWN )
       {
    INT index = CBUpdateLBox( lphc, TRUE );

    if(index >= 0)
    {
        lphc->wState |= CBF_NOLBSELECT;
        CBUpdateEdit( lphc, index );
        lphc->wState &= ~CBF_NOLBSELECT;
    }
       }
       ReleaseCapture();
       SetCapture(lphc->hWndLBox);
   }

   if( lphc->wState & CBF_BUTTONDOWN )
   {
       lphc->wState &= ~CBF_BUTTONDOWN;
       CBRepaintButton( lphc );
   }
}
