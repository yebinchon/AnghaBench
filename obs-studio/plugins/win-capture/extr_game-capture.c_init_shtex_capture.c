
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct game_capture {int texture; TYPE_1__* shtex_data; } ;
struct TYPE_2__ {int tex_handle; } ;


 int gs_texture_destroy (int ) ;
 int gs_texture_open_shared (int ) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 int warn (char*) ;

__attribute__((used)) static inline bool init_shtex_capture(struct game_capture *gc)
{
 obs_enter_graphics();
 gs_texture_destroy(gc->texture);
 gc->texture = gs_texture_open_shared(gc->shtex_data->tex_handle);
 obs_leave_graphics();

 if (!gc->texture) {
  warn("init_shtex_capture: failed to open shared handle");
  return 0;
 }

 return 1;
}
