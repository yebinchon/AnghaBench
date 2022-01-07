
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int hdcMem; int hbmMem; int hwndSelf; } ;
struct TYPE_6__ {int right; int bottom; int left; int top; } ;
typedef TYPE_1__ RECT ;
typedef int LPCWSTR ;
typedef int HWND ;
typedef int HDC ;
typedef int HCURSOR ;
typedef int HBRUSH ;
typedef TYPE_2__ CCPRIV ;


 int CC_HSLtoRGB (int,int,int) ;
 int CreateCompatibleBitmap (int ,int,int) ;
 int CreateCompatibleDC (int ) ;
 int CreateSolidBrush (int ) ;
 int DeleteObject (int ) ;
 int FillRect (int ,TYPE_1__*,int ) ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetDC (int ) ;
 int GetDlgItem (int ,int ) ;
 int IDC_COLOR_GRAPH ;
 scalar_t__ IDC_WAIT ;
 int LoadCursorW (int ,int ) ;
 int ReleaseDC (int ,int ) ;
 int SelectObject (int ,int ) ;
 int SetCursor (int ) ;
 int XSTEPS ;
 int YSTEPS ;

__attribute__((used)) static void CC_PrepareColorGraph(CCPRIV *infoPtr)
{
 int sdif, hdif, xdif, ydif, hue, sat;
 HWND hwnd = GetDlgItem(infoPtr->hwndSelf, IDC_COLOR_GRAPH);
 HBRUSH hbrush;
 HDC hdc ;
 RECT rect, client;
 HCURSOR hcursor = SetCursor( LoadCursorW(0, (LPCWSTR)IDC_WAIT) );

 GetClientRect(hwnd, &client);
 hdc = GetDC(hwnd);
 infoPtr->hdcMem = CreateCompatibleDC(hdc);
 infoPtr->hbmMem = CreateCompatibleBitmap(hdc, client.right, client.bottom);
 SelectObject(infoPtr->hdcMem, infoPtr->hbmMem);

 xdif = client.right / XSTEPS;
 ydif = client.bottom / YSTEPS+1;
 hdif = 239 / XSTEPS;
 sdif = 240 / YSTEPS;
 for (rect.left = hue = 0; hue < 239 + hdif; hue += hdif)
 {
  rect.right = rect.left + xdif;
  rect.bottom = client.bottom;
  for(sat = 0; sat < 240 + sdif; sat += sdif)
  {
   rect.top = rect.bottom - ydif;
   hbrush = CreateSolidBrush(CC_HSLtoRGB(hue, sat, 120));
   FillRect(infoPtr->hdcMem, &rect, hbrush);
   DeleteObject(hbrush);
   rect.bottom = rect.top;
  }
  rect.left = rect.right;
 }
 ReleaseDC(hwnd, hdc);
 SetCursor(hcursor);
}
