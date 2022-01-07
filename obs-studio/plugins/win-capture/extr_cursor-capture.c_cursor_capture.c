
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cursor_data {int visible; scalar_t__ current_cursor; int cursor_pos; } ;
typedef int ci ;
struct TYPE_3__ {int cbSize; scalar_t__ hCursor; int flags; int ptScreenPos; int member_0; } ;
typedef int HICON ;
typedef TYPE_1__ CURSORINFO ;


 int CURSOR_SHOWING ;
 int CopyIcon (scalar_t__) ;
 int DestroyIcon (int ) ;
 int GetCursorInfo (TYPE_1__*) ;
 int cursor_capture_icon (struct cursor_data*,int ) ;
 int memcpy (int *,int *,int) ;

void cursor_capture(struct cursor_data *data)
{
 CURSORINFO ci = {0};
 HICON icon;

 ci.cbSize = sizeof(ci);

 if (!GetCursorInfo(&ci)) {
  data->visible = 0;
  return;
 }

 memcpy(&data->cursor_pos, &ci.ptScreenPos, sizeof(data->cursor_pos));

 if (data->current_cursor == ci.hCursor) {
  return;
 }

 icon = CopyIcon(ci.hCursor);
 data->visible = cursor_capture_icon(data, icon);
 data->current_cursor = ci.hCursor;
 if ((ci.flags & CURSOR_SHOWING) == 0)
  data->visible = 0;
 DestroyIcon(icon);
}
