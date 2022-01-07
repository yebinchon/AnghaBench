
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long x; long y; } ;
struct cursor_data {long x_hotspot; long y_hotspot; int texture; scalar_t__ visible; TYPE_1__ cursor_pos; } ;


 int GS_BLEND_INVSRCALPHA ;
 int GS_BLEND_SRCALPHA ;
 int gs_blend_function (int ,int ) ;
 int gs_blend_state_pop () ;
 int gs_blend_state_push () ;
 int gs_enable_color (int,int,int,int) ;
 int gs_matrix_pop () ;
 int gs_matrix_push () ;
 int gs_matrix_scale3f (float,float,float) ;
 int obs_source_draw (int ,long,long,int ,int ,int) ;

void cursor_draw(struct cursor_data *data, long x_offset, long y_offset,
   float x_scale, float y_scale, long width, long height)
{
 long x = data->cursor_pos.x + x_offset;
 long y = data->cursor_pos.y + y_offset;
 long x_draw = x - data->x_hotspot;
 long y_draw = y - data->y_hotspot;

 if (x < 0 || x > width || y < 0 || y > height)
  return;

 if (data->visible && !!data->texture) {
  gs_blend_state_push();
  gs_blend_function(GS_BLEND_SRCALPHA, GS_BLEND_INVSRCALPHA);
  gs_enable_color(1, 1, 1, 0);

  gs_matrix_push();
  gs_matrix_scale3f(x_scale, y_scale, 1.0f);
  obs_source_draw(data->texture, x_draw, y_draw, 0, 0, 0);
  gs_matrix_pop();

  gs_enable_color(1, 1, 1, 1);
  gs_blend_state_pop();
 }
}
