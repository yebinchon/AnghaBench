
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_capture {scalar_t__ texture_written; scalar_t__ valid; } ;
typedef int gs_effect_t ;


 int draw_texture (struct dc_capture*,int *) ;

void dc_capture_render(struct dc_capture *capture, gs_effect_t *effect)
{
 if (capture->valid && capture->texture_written)
  draw_texture(capture, effect);
}
