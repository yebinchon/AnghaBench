
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_t ;


 int obs_source_addref (int *) ;
 int obs_source_release (int *) ;
 int obs_source_valid (int *,char*) ;
 int render_video (int *) ;

void obs_source_video_render(obs_source_t *source)
{
 if (!obs_source_valid(source, "obs_source_video_render"))
  return;

 obs_source_addref(source);
 render_video(source);
 obs_source_release(source);
}
