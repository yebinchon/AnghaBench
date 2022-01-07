
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_source {int destroy_media; scalar_t__ media_valid; scalar_t__ close_when_inactive; int source; scalar_t__ is_clear_on_media_end; } ;


 int obs_source_output_video (int ,int *) ;

__attribute__((used)) static void media_stopped(void *opaque)
{
 struct ffmpeg_source *s = opaque;
 if (s->is_clear_on_media_end) {
  obs_source_output_video(s->source, ((void*)0));
  if (s->close_when_inactive && s->media_valid)
   s->destroy_media = 1;
 }
}
