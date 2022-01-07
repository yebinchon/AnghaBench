
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_audio {int dummy; } ;
struct ffmpeg_source {int source; } ;


 int obs_source_output_audio (int ,struct obs_source_audio*) ;

__attribute__((used)) static void get_audio(void *opaque, struct obs_source_audio *a)
{
 struct ffmpeg_source *s = opaque;
 obs_source_output_audio(s->source, a);
}
