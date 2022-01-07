
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRGN ;


 int CreateRectRgn (int ,int ,int ,int ) ;
 int DeleteObject (int ) ;
 int InvalidateRgn (int ,int ,int ) ;
 int SW_ERASE ;
 int ScrollWindowEx (int ,int,int,int ,int ,int ,int ,int ) ;
 int g_Wnd ;

__attribute__((used)) static void
mi_scroll(int dx, int dy)
{
  HRGN rgn;

  rgn = CreateRectRgn(0, 0, 0, 0);
  ScrollWindowEx(g_Wnd, dx, dy, 0, 0, rgn, 0, SW_ERASE);
  InvalidateRgn(g_Wnd, rgn, 0);
  DeleteObject(rgn);
}
