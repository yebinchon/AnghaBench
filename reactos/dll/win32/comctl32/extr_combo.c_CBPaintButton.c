
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int wState; } ;
typedef int RECT ;
typedef TYPE_1__* LPHEADCOMBO ;
typedef int HDC ;


 int CBF_BUTTONDOWN ;
 int CBF_NOREDRAW ;
 scalar_t__ CB_DISABLED (TYPE_1__*) ;
 int DFCS_INACTIVE ;
 int DFCS_PUSHED ;
 int DFCS_SCROLLCOMBOBOX ;
 int DFC_SCROLL ;
 int DrawFrameControl (int ,int *,int ,int ) ;

__attribute__((used)) static void CBPaintButton( LPHEADCOMBO lphc, HDC hdc, RECT rectButton)
{
    UINT buttonState = DFCS_SCROLLCOMBOBOX;

    if( lphc->wState & CBF_NOREDRAW )
      return;


    if (lphc->wState & CBF_BUTTONDOWN)
 buttonState |= DFCS_PUSHED;

    if (CB_DISABLED(lphc))
 buttonState |= DFCS_INACTIVE;

    DrawFrameControl(hdc, &rectButton, DFC_SCROLL, buttonState);
}
