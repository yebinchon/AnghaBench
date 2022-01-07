
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int updating; int l; int hwndSelf; int s; int h; } ;
typedef TYPE_1__ CCPRIV ;


 int CC_PaintLumBar (TYPE_1__*) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_COLOR_EDIT_H ;
 int IDC_COLOR_EDIT_L ;
 int IDC_COLOR_EDIT_S ;
 int IDC_COLOR_GRAPH ;
 scalar_t__ IsWindowVisible (int ) ;
 int SetDlgItemInt (int ,int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static void CC_EditSetHSL( CCPRIV *infoPtr )
{
 if (IsWindowVisible( GetDlgItem(infoPtr->hwndSelf, IDC_COLOR_GRAPH) ))
 {
   infoPtr->updating = TRUE;
   SetDlgItemInt(infoPtr->hwndSelf, IDC_COLOR_EDIT_H, infoPtr->h, TRUE);
   SetDlgItemInt(infoPtr->hwndSelf, IDC_COLOR_EDIT_S, infoPtr->s, TRUE);
   SetDlgItemInt(infoPtr->hwndSelf, IDC_COLOR_EDIT_L, infoPtr->l, TRUE);
   infoPtr->updating = FALSE;
 }
 CC_PaintLumBar(infoPtr);
}
