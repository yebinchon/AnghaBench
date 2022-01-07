
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_6__ {int hwnd; int hwndUpDown; scalar_t__ needsScrolling; } ;
typedef TYPE_1__ TAB_INFO ;
typedef TYPE_2__ RECT ;
typedef int HDC ;


 int ExcludeClipRect (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int GetDC (int ) ;
 int GetWindowRect (int ,TYPE_2__*) ;
 int ReleaseDC (int ,int ) ;
 int TAB_DrawItemInterior (TYPE_1__ const*,int ,int,int *) ;

__attribute__((used)) static void
TAB_DrawLoneItemInterior(const TAB_INFO* infoPtr, int iItem)
{
  HDC hdc = GetDC(infoPtr->hwnd);
  RECT r, rC;


  if (infoPtr->needsScrolling)
  {
    GetWindowRect(infoPtr->hwnd, &rC);
    GetWindowRect(infoPtr->hwndUpDown, &r);
    ExcludeClipRect(hdc, r.left - rC.left, r.top - rC.top, r.right - rC.left, r.bottom - rC.top);
  }
  TAB_DrawItemInterior(infoPtr, hdc, iItem, ((void*)0));
  ReleaseDC(infoPtr->hwnd, hdc);
}
