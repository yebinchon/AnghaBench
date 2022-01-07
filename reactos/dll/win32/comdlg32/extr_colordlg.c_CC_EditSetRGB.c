
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int updating; int hwndSelf; TYPE_1__* lpcc; } ;
struct TYPE_4__ {int rgbResult; } ;
typedef int COLORREF ;
typedef TYPE_2__ CCPRIV ;


 int FALSE ;
 int GetBValue (int ) ;
 int GetDlgItem (int ,int ) ;
 int GetGValue (int ) ;
 int GetRValue (int ) ;
 int IDC_COLOR_EDIT_B ;
 int IDC_COLOR_EDIT_G ;
 int IDC_COLOR_EDIT_R ;
 int IDC_COLOR_GRAPH ;
 scalar_t__ IsWindowVisible (int ) ;
 int SetDlgItemInt (int ,int ,int,int ) ;
 int TRUE ;

__attribute__((used)) static void CC_EditSetRGB( CCPRIV *infoPtr )
{
 if (IsWindowVisible( GetDlgItem(infoPtr->hwndSelf, IDC_COLOR_GRAPH) ))
 {
   COLORREF cr = infoPtr->lpcc->rgbResult;
   int r = GetRValue(cr);
   int g = GetGValue(cr);
   int b = GetBValue(cr);

   infoPtr->updating = TRUE;
   SetDlgItemInt(infoPtr->hwndSelf, IDC_COLOR_EDIT_R, r, TRUE);
   SetDlgItemInt(infoPtr->hwndSelf, IDC_COLOR_EDIT_G, g, TRUE);
   SetDlgItemInt(infoPtr->hwndSelf, IDC_COLOR_EDIT_B, b, TRUE);
   infoPtr->updating = FALSE;
 }
}
