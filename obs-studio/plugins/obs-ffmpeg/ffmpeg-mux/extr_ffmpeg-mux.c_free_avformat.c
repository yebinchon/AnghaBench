
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ffmpeg_mux {scalar_t__ num_audio_streams; int * audio_streams; int * video_stream; TYPE_2__* output; } ;
struct TYPE_4__ {int pb; TYPE_1__* oformat; } ;
struct TYPE_3__ {int flags; } ;


 int AVFMT_NOFILE ;
 int avformat_free_context (TYPE_2__*) ;
 int avio_close (int ) ;
 int free (int *) ;

__attribute__((used)) static void free_avformat(struct ffmpeg_mux *ffm)
{
 if (ffm->output) {
  if ((ffm->output->oformat->flags & AVFMT_NOFILE) == 0)
   avio_close(ffm->output->pb);

  avformat_free_context(ffm->output);
  ffm->output = ((void*)0);
 }

 if (ffm->audio_streams) {
  free(ffm->audio_streams);
 }

 ffm->video_stream = ((void*)0);
 ffm->audio_streams = ((void*)0);
 ffm->num_audio_streams = 0;
}
