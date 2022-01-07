
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int hdcMem; int hwndSelf; } ;
struct TYPE_6__ {int bottom; int right; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;
typedef int HDC ;
typedef TYPE_2__ CCPRIV ;


 int BitBlt (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int CC_PrepareColorGraph (TYPE_2__*) ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetDC (int ) ;
 int GetDlgItem (int ,int ) ;
 int IDC_COLOR_GRAPH ;
 scalar_t__ IsWindowVisible (int ) ;
 int ReleaseDC (int ,int ) ;
 int SRCCOPY ;
 int WARN (char*) ;

__attribute__((used)) static void CC_PaintColorGraph(CCPRIV *infoPtr)
{
 HWND hwnd = GetDlgItem( infoPtr->hwndSelf, IDC_COLOR_GRAPH );
 HDC hDC;
 RECT rect;

 if (IsWindowVisible(hwnd))
 {
  if (!infoPtr->hdcMem)
   CC_PrepareColorGraph(infoPtr);

  hDC = GetDC(hwnd);
  GetClientRect(hwnd, &rect);
  if (infoPtr->hdcMem)
      BitBlt(hDC, 0, 0, rect.right, rect.bottom, infoPtr->hdcMem, 0, 0, SRCCOPY);
  else
      WARN("choose color: hdcMem is not defined\n");
  ReleaseDC(hwnd, hDC);
 }
}
