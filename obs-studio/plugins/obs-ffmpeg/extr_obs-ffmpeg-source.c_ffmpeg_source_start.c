
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_source {int source; scalar_t__ is_local_file; int is_looping; int media; scalar_t__ media_valid; } ;


 int ffmpeg_source_open (struct ffmpeg_source*) ;
 int mp_media_play (int *,int ) ;
 int obs_source_show_preloaded_video (int ) ;

__attribute__((used)) static void ffmpeg_source_start(struct ffmpeg_source *s)
{
 if (!s->media_valid)
  ffmpeg_source_open(s);

 if (s->media_valid) {
  mp_media_play(&s->media, s->is_looping);
  if (s->is_local_file)
   obs_source_show_preloaded_video(s->source);
 }
}
