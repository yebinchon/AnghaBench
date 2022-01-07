
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * async_prev_texrender; int ** async_prev_textures; int deinterlace_mode; } ;
typedef TYPE_1__ obs_source_t ;


 int OBS_DEINTERLACE_MODE_DISABLE ;
 int gs_texrender_destroy (int *) ;
 int gs_texture_destroy (int *) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void disable_deinterlacing(obs_source_t *source)
{
 obs_enter_graphics();
 gs_texture_destroy(source->async_prev_textures[0]);
 gs_texture_destroy(source->async_prev_textures[1]);
 gs_texture_destroy(source->async_prev_textures[2]);
 gs_texrender_destroy(source->async_prev_texrender);
 source->deinterlace_mode = OBS_DEINTERLACE_MODE_DISABLE;
 source->async_prev_textures[0] = ((void*)0);
 source->async_prev_textures[1] = ((void*)0);
 source->async_prev_textures[2] = ((void*)0);
 source->async_prev_texrender = ((void*)0);
 obs_leave_graphics();
}
