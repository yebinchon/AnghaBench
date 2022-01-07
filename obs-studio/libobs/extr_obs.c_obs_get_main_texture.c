
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_core_video {int * render_texture; int texture_rendered; } ;
typedef int gs_texture_t ;
struct TYPE_2__ {struct obs_core_video video; } ;


 TYPE_1__* obs ;

gs_texture_t *obs_get_main_texture(void)
{
 struct obs_core_video *video;

 if (!obs)
  return ((void*)0);

 video = &obs->video;
 if (!video->texture_rendered)
  return ((void*)0);

 return video->render_texture;
}
