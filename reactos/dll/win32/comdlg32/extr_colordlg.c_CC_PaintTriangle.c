
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int top; int bottom; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_12__ {int hwndSelf; TYPE_7__ old3angle; scalar_t__ l; } ;
struct TYPE_11__ {int y; scalar_t__ x; } ;
struct TYPE_10__ {int bottom; int top; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;
typedef int HWND ;
typedef int HDC ;
typedef scalar_t__ HBRUSH ;
typedef TYPE_3__ CCPRIV ;


 int BLACK_BRUSH ;
 int COLOR_BTNFACE ;
 int ClientToScreen (int ,TYPE_2__*) ;
 int FillRect (int ,TYPE_7__*,scalar_t__) ;
 int GCLP_HBRBACKGROUND ;
 scalar_t__ GetClassLongPtrW (int ,int ) ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetDC (int ) ;
 int GetDialogBaseUnits () ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ GetStockObject (int ) ;
 scalar_t__ GetSysColorBrush (int ) ;
 int IDC_COLOR_GRAPH ;
 int IDC_COLOR_LUMBAR ;
 scalar_t__ IsWindowVisible (int ) ;
 int LOWORD (int ) ;
 scalar_t__ MAXVERT ;
 int Polygon (int ,TYPE_2__*,int) ;
 int ReleaseDC (int ,int ) ;
 int ScreenToClient (int ,TYPE_2__*) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;

__attribute__((used)) static void CC_PaintTriangle(CCPRIV *infoPtr)
{
 HDC hDC;
 long temp;
 int w = LOWORD(GetDialogBaseUnits()) / 2;
 POINT points[3];
 int height;
 int oben;
 RECT rect;
 HBRUSH hbr;
 HWND hwnd = GetDlgItem(infoPtr->hwndSelf, IDC_COLOR_LUMBAR);

 if (IsWindowVisible( GetDlgItem(infoPtr->hwndSelf, IDC_COLOR_GRAPH)))
 {
   GetClientRect(hwnd, &rect);
   height = rect.bottom;
   hDC = GetDC(infoPtr->hwndSelf);
   points[0].y = rect.top;
   points[0].x = rect.right;
   ClientToScreen(hwnd, points);
   ScreenToClient(infoPtr->hwndSelf, points);
   oben = points[0].y;

   temp = (long)height * (long)infoPtr->l;
   points[0].x += 1;
   points[0].y = oben + height - temp / (long)MAXVERT;
   points[1].y = points[0].y + w;
   points[2].y = points[0].y - w;
   points[2].x = points[1].x = points[0].x + w;

   hbr = (HBRUSH)GetClassLongPtrW( hwnd, GCLP_HBRBACKGROUND);
   if (!hbr) hbr = GetSysColorBrush(COLOR_BTNFACE);
   FillRect(hDC, &infoPtr->old3angle, hbr);
   infoPtr->old3angle.left = points[0].x;
   infoPtr->old3angle.right = points[1].x + 1;
   infoPtr->old3angle.top = points[2].y - 1;
   infoPtr->old3angle.bottom= points[1].y + 1;

   hbr = SelectObject(hDC, GetStockObject(BLACK_BRUSH));
   Polygon(hDC, points, 3);
   SelectObject(hDC, hbr);

   ReleaseDC(infoPtr->hwndSelf, hDC);
 }
}
