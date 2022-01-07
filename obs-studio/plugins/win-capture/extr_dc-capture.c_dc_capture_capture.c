
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbSize; } ;
struct dc_capture {int texture_written; int cursor_hidden; scalar_t__ cursor_captured; int y; int x; int height; int width; TYPE_1__ ci; scalar_t__ capture_cursor; } ;
typedef int HWND ;
typedef int HDC ;
typedef int CURSORINFO ;


 int BitBlt (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ GetCursorInfo (TYPE_1__*) ;
 int GetDC (int ) ;
 int LOG_WARNING ;
 int ReleaseDC (int *,int ) ;
 int SRCCOPY ;
 int blog (int ,char*) ;
 int dc_capture_get_dc (struct dc_capture*) ;
 int dc_capture_release_dc (struct dc_capture*) ;
 int draw_cursor (struct dc_capture*,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

void dc_capture_capture(struct dc_capture *capture, HWND window)
{
 HDC hdc_target;
 HDC hdc;

 if (capture->capture_cursor) {
  memset(&capture->ci, 0, sizeof(CURSORINFO));
  capture->ci.cbSize = sizeof(CURSORINFO);
  capture->cursor_captured = GetCursorInfo(&capture->ci);
 }

 hdc = dc_capture_get_dc(capture);
 if (!hdc) {
  blog(LOG_WARNING, "[capture_screen] Failed to get "
      "texture DC");
  return;
 }

 hdc_target = GetDC(window);

 BitBlt(hdc, 0, 0, capture->width, capture->height, hdc_target,
        capture->x, capture->y, SRCCOPY);

 ReleaseDC(((void*)0), hdc_target);

 if (capture->cursor_captured && !capture->cursor_hidden)
  draw_cursor(capture, hdc, window);

 dc_capture_release_dc(capture);

 capture->texture_written = 1;
}
