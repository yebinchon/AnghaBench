
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_source {int source; scalar_t__ is_clear_on_media_end; int media; scalar_t__ media_valid; scalar_t__ restart_on_activate; } ;


 int mp_media_stop (int *) ;
 int obs_source_output_video (int ,int *) ;

__attribute__((used)) static void ffmpeg_source_deactivate(void *data)
{
 struct ffmpeg_source *s = data;

 if (s->restart_on_activate) {
  if (s->media_valid) {
   mp_media_stop(&s->media);

   if (s->is_clear_on_media_end)
    obs_source_output_video(s->source, ((void*)0));
  }
 }
}
