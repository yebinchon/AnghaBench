
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int textRect; } ;
typedef int RECT ;
typedef int HWND ;
typedef TYPE_1__ HEADCOMBO ;
typedef int HDC ;


 int BF_RECT ;
 scalar_t__ CBS_SIMPLE ;
 scalar_t__ CB_GETTYPE (TYPE_1__ const*) ;
 int COMBO_XBORDERSIZE () ;
 int COMBO_YBORDERSIZE () ;
 int DrawEdge (int ,int *,int ,int ) ;
 int EDGE_SUNKEN ;
 int EDIT_CONTROL_PADDING () ;
 int GetClientRect (int ,int *) ;
 int InflateRect (int *,int ,int ) ;

__attribute__((used)) static void CBPaintBorder(
  HWND hwnd,
  const HEADCOMBO *lphc,
  HDC hdc)
{
  RECT clientRect;

  if (CB_GETTYPE(lphc) != CBS_SIMPLE)
  {
    GetClientRect(hwnd, &clientRect);
  }
  else
  {
    clientRect = lphc->textRect;

    InflateRect(&clientRect, EDIT_CONTROL_PADDING(), EDIT_CONTROL_PADDING());
    InflateRect(&clientRect, COMBO_XBORDERSIZE(), COMBO_YBORDERSIZE());
  }

  DrawEdge(hdc, &clientRect, EDGE_SUNKEN, BF_RECT);
}
