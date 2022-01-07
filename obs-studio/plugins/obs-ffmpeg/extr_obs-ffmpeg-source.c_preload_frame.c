
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_frame {int dummy; } ;
struct ffmpeg_source {int source; scalar_t__ is_looping; scalar_t__ is_clear_on_media_end; scalar_t__ close_when_inactive; } ;


 int obs_source_preload_video (int ,struct obs_source_frame*) ;

__attribute__((used)) static void preload_frame(void *opaque, struct obs_source_frame *f)
{
 struct ffmpeg_source *s = opaque;
 if (s->close_when_inactive)
  return;

 if (s->is_clear_on_media_end || s->is_looping)
  obs_source_preload_video(s->source, f);
}
