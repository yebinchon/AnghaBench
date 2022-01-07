
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_frame {int dummy; } ;
struct ffmpeg_source {int source; } ;


 int obs_source_output_video (int ,struct obs_source_frame*) ;

__attribute__((used)) static void get_frame(void *opaque, struct obs_source_frame *f)
{
 struct ffmpeg_source *s = opaque;
 obs_source_output_video(s->source, f);
}
