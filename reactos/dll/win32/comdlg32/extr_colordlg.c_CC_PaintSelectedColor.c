
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* lpcc; int hwndSelf; } ;
struct TYPE_4__ {int rgbResult; } ;
typedef int RECT ;
typedef int HWND ;
typedef int HDC ;
typedef scalar_t__ HBRUSH ;
typedef TYPE_2__ CCPRIV ;


 int BDR_SUNKENOUTER ;
 int BF_RECT ;
 scalar_t__ CreateSolidBrush (int ) ;
 int DeleteObject (scalar_t__) ;
 int DrawEdge (int ,int *,int ,int ) ;
 int FillRect (int ,int *,scalar_t__) ;
 int GetClientRect (int ,int *) ;
 int GetDC (int ) ;
 int GetDlgItem (int ,int ) ;
 int IDC_COLOR_GRAPH ;
 int IDC_COLOR_RESULT ;
 scalar_t__ IsWindowVisible (int ) ;
 int ReleaseDC (int ,int ) ;

__attribute__((used)) static void CC_PaintSelectedColor(const CCPRIV *infoPtr)
{
 if (IsWindowVisible( GetDlgItem(infoPtr->hwndSelf, IDC_COLOR_GRAPH) ))
 {
  RECT rect;
  HDC hdc;
  HBRUSH hBrush;
  HWND hwnd = GetDlgItem(infoPtr->hwndSelf, IDC_COLOR_RESULT);

  hdc = GetDC(hwnd);
  GetClientRect(hwnd, &rect) ;
  hBrush = CreateSolidBrush(infoPtr->lpcc->rgbResult);
  if (hBrush)
  {
   FillRect(hdc, &rect, hBrush);
   DrawEdge(hdc, &rect, BDR_SUNKENOUTER, BF_RECT);
   DeleteObject(hBrush);
  }
  ReleaseDC(hwnd, hdc);
 }
}
