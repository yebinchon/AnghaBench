
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int right; int left; int bottom; int top; } ;
struct TYPE_8__ {int hwndFocus; TYPE_1__ focusRect; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;
typedef int HDC ;
typedef TYPE_2__ CCPRIV ;


 int CC_DrawCurrentFocusRect (TYPE_2__*) ;
 int DrawFocusRect (int ,TYPE_1__*) ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetDC (int ) ;
 int ReleaseDC (int ,int ) ;

__attribute__((used)) static void CC_DrawFocusRect(CCPRIV *lpp, HWND hwnd, int x, int y, int rows, int cols)
{
  RECT rect;
  int dx, dy;
  HDC hdc;

  CC_DrawCurrentFocusRect(lpp);

  GetClientRect(hwnd, &rect);
  dx = (rect.right - rect.left) / cols;
  dy = (rect.bottom - rect.top) / rows;
  rect.left += (x * dx) - 2;
  rect.top += (y * dy) - 2;
  rect.right = rect.left + dx;
  rect.bottom = rect.top + dy;

  hdc = GetDC(hwnd);
  DrawFocusRect(hdc, &rect);
  lpp->focusRect = rect;
  lpp->hwndFocus = hwnd;
  ReleaseDC(hwnd, hdc);
}
