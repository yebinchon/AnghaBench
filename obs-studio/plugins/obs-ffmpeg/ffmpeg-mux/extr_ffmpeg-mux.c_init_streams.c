
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tracks; scalar_t__ has_video; } ;
struct ffmpeg_mux {int num_audio_streams; int video_stream; TYPE_1__ params; int audio_streams; } ;


 int calloc (int,int) ;
 int create_audio_stream (struct ffmpeg_mux*,int) ;
 int create_video_stream (struct ffmpeg_mux*) ;

__attribute__((used)) static bool init_streams(struct ffmpeg_mux *ffm)
{
 if (ffm->params.has_video)
  create_video_stream(ffm);

 if (ffm->params.tracks) {
  ffm->audio_streams =
   calloc(1, ffm->params.tracks * sizeof(void *));

  for (int i = 0; i < ffm->params.tracks; i++)
   create_audio_stream(ffm, i);
 }

 if (!ffm->video_stream && !ffm->num_audio_streams)
  return 0;

 return 1;
}
