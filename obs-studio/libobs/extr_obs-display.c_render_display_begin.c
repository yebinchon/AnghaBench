
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vec4 {float w; } ;
struct obs_display {int background_color; int swap; } ;


 int GS_CLEAR_COLOR ;
 int GS_CLEAR_DEPTH ;
 int GS_CLEAR_STENCIL ;
 int GS_NEITHER ;
 int gs_begin_scene () ;
 int gs_clear (int,struct vec4*,float,int ) ;
 int gs_enable_depth_test (int) ;
 int gs_load_swapchain (int ) ;
 int gs_ortho (float,float,float,float,float,float) ;
 int gs_resize (scalar_t__,scalar_t__) ;
 int gs_set_cull_mode (int ) ;
 int gs_set_viewport (int ,int ,scalar_t__,scalar_t__) ;
 int vec4_from_rgba (struct vec4*,int ) ;

__attribute__((used)) static inline void render_display_begin(struct obs_display *display,
     uint32_t cx, uint32_t cy,
     bool size_changed)
{
 struct vec4 clear_color;

 gs_load_swapchain(display->swap);

 if (size_changed)
  gs_resize(cx, cy);

 gs_begin_scene();

 vec4_from_rgba(&clear_color, display->background_color);
 clear_color.w = 1.0f;

 gs_clear(GS_CLEAR_COLOR | GS_CLEAR_DEPTH | GS_CLEAR_STENCIL,
   &clear_color, 1.0f, 0);

 gs_enable_depth_test(0);

 gs_set_cull_mode(GS_NEITHER);

 gs_ortho(0.0f, (float)cx, 0.0f, (float)cy, -100.0f, 100.0f);
 gs_set_viewport(0, 0, cx, cy);
}
