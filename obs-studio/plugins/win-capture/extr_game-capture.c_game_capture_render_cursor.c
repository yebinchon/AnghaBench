
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct game_capture {TYPE_1__* global_hook_info; int cursor_data; int window; } ;
struct TYPE_5__ {int y; int x; int member_0; } ;
struct TYPE_4__ {scalar_t__ base_cy; scalar_t__ base_cx; scalar_t__ cy; scalar_t__ cx; scalar_t__ window; } ;
typedef TYPE_2__ POINT ;
typedef int HWND ;


 int ClientToScreen (int ,TYPE_2__*) ;
 int cursor_draw (int *,int ,int ,float,float,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void game_capture_render_cursor(struct game_capture *gc)
{
 POINT p = {0};
 HWND window;

 if (!gc->global_hook_info->base_cx || !gc->global_hook_info->base_cy)
  return;

 window = !!gc->global_hook_info->window
    ? (HWND)(uintptr_t)gc->global_hook_info->window
    : gc->window;

 ClientToScreen(window, &p);

 float x_scale = (float)gc->global_hook_info->cx /
   (float)gc->global_hook_info->base_cx;
 float y_scale = (float)gc->global_hook_info->cy /
   (float)gc->global_hook_info->base_cy;

 cursor_draw(&gc->cursor_data, -p.x, -p.y, x_scale, y_scale,
      gc->global_hook_info->base_cx,
      gc->global_hook_info->base_cy);
}
