
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {TYPE_1__* lpcc; int hwndSelf; } ;
struct TYPE_15__ {int x; int y; } ;
struct TYPE_14__ {int right; int left; int bottom; int top; } ;
struct TYPE_13__ {int rgbResult; int * lpCustColors; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ POINT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int COLORREF ;
typedef TYPE_4__ CCPRIV ;
typedef int BOOL ;


 int CC_DrawFocusRect (TYPE_4__*,int ,int,int,int,int) ;
 int CONV_LPARAMTOPOINT (int ,TYPE_3__*) ;
 int ClientToScreen (int ,TYPE_3__*) ;
 int DISTANCE ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int GetWindowRect (int ,TYPE_2__*) ;
 int IDC_COLOR_USRDEF ;
 scalar_t__ PtInRect (TYPE_2__*,TYPE_3__) ;
 int ScreenToClient (int ,TYPE_3__*) ;
 int TRUE ;

__attribute__((used)) static BOOL CC_MouseCheckUserColorArray(CCPRIV *lpp, int rows, int cols, LPARAM lParam)
{
 HWND hwnd;
 POINT point;
 RECT rect;
 int dx, dy, x, y;
 COLORREF *crarr = lpp->lpcc->lpCustColors;

 CONV_LPARAMTOPOINT(lParam, &point);
 ClientToScreen(lpp->hwndSelf, &point);
 hwnd = GetDlgItem(lpp->hwndSelf, IDC_COLOR_USRDEF);
 GetWindowRect(hwnd, &rect);
 if (PtInRect(&rect, point))
 {
  dx = (rect.right - rect.left) / cols;
  dy = (rect.bottom - rect.top) / rows;
  ScreenToClient(hwnd, &point);

  if (point.x % dx < (dx - DISTANCE) && point.y % dy < (dy - DISTANCE))
  {
   x = point.x / dx;
   y = point.y / dy;
   lpp->lpcc->rgbResult = crarr[x + (cols * y) ];
   CC_DrawFocusRect(lpp, hwnd, x, y, rows, cols);
   return TRUE;
  }
 }
 return FALSE;
}
