
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int s; int h; int hwndSelf; } ;
struct TYPE_7__ {int bottom; int top; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;
typedef int HDC ;
typedef int HBRUSH ;
typedef TYPE_2__ CCPRIV ;


 int BDR_SUNKENOUTER ;
 int BF_RECT ;
 int CC_HSLtoRGB (int ,int ,int) ;
 int CreateSolidBrush (int ) ;
 int DeleteObject (int ) ;
 int DrawEdge (int ,TYPE_1__*,int ,int ) ;
 int FillRect (int ,TYPE_1__*,int ) ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetDC (int ) ;
 int GetDlgItem (int ,int ) ;
 int IDC_COLOR_LUMBAR ;
 scalar_t__ IsWindowVisible (int ) ;
 int ReleaseDC (int ,int ) ;
 int YSTEPS ;
 int max (int ,int) ;

__attribute__((used)) static void CC_PaintLumBar(const CCPRIV *infoPtr)
{
 HWND hwnd = GetDlgItem(infoPtr->hwndSelf, IDC_COLOR_LUMBAR);
 RECT rect, client;
 int lum, ldif, ydif;
 HBRUSH hbrush;
 HDC hDC;

 if (IsWindowVisible(hwnd))
 {
  hDC = GetDC(hwnd);
  GetClientRect(hwnd, &client);
  rect = client;

  ldif = 240 / YSTEPS;
  ydif = client.bottom / YSTEPS+1;
  for (lum = 0; lum < 240 + ldif; lum += ldif)
  {
   rect.top = max(0, rect.bottom - ydif);
   hbrush = CreateSolidBrush(CC_HSLtoRGB(infoPtr->h, infoPtr->s, lum));
   FillRect(hDC, &rect, hbrush);
   DeleteObject(hbrush);
   rect.bottom = rect.top;
  }
  GetClientRect(hwnd, &rect);
  DrawEdge(hDC, &rect, BDR_SUNKENOUTER, BF_RECT);
  ReleaseDC(hwnd, hDC);
 }
}
