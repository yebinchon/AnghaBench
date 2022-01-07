
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int x; int y; } ;
struct TYPE_10__ {int flags; TYPE_1__ ptScreenPos; int hCursor; } ;
struct dc_capture {TYPE_4__ ci; int y; int x; } ;
struct TYPE_9__ {int hbmMask; int hbmColor; scalar_t__ yHotspot; scalar_t__ xHotspot; } ;
struct TYPE_8__ {int x; int y; int member_1; int member_0; } ;
typedef TYPE_2__ POINT ;
typedef TYPE_3__ ICONINFO ;
typedef scalar_t__ HWND ;
typedef int HICON ;
typedef int HDC ;
typedef TYPE_4__ CURSORINFO ;


 int CURSOR_SHOWING ;
 int ClientToScreen (scalar_t__,TYPE_2__*) ;
 int CopyIcon (int ) ;
 int DI_NORMAL ;
 int DeleteObject (int ) ;
 int DestroyIcon (int ) ;
 int DrawIconEx (int ,int,int,int ,int ,int ,int ,int *,int ) ;
 scalar_t__ GetIconInfo (int ,TYPE_3__*) ;

__attribute__((used)) static void draw_cursor(struct dc_capture *capture, HDC hdc, HWND window)
{
 HICON icon;
 ICONINFO ii;
 CURSORINFO *ci = &capture->ci;
 POINT win_pos = {capture->x, capture->y};

 if (!(capture->ci.flags & CURSOR_SHOWING))
  return;

 icon = CopyIcon(capture->ci.hCursor);
 if (!icon)
  return;

 if (GetIconInfo(icon, &ii)) {
  POINT pos;

  if (window)
   ClientToScreen(window, &win_pos);

  pos.x = ci->ptScreenPos.x - (int)ii.xHotspot - win_pos.x;
  pos.y = ci->ptScreenPos.y - (int)ii.yHotspot - win_pos.y;

  DrawIconEx(hdc, pos.x, pos.y, icon, 0, 0, 0, ((void*)0), DI_NORMAL);

  DeleteObject(ii.hbmColor);
  DeleteObject(ii.hbmMask);
 }

 DestroyIcon(icon);
}
