
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ffmpeg_data {scalar_t__ last_error; TYPE_2__* output; int * audio_streams; scalar_t__ video; scalar_t__ initialized; } ;
struct TYPE_5__ {int pb; TYPE_1__* oformat; } ;
struct TYPE_4__ {int flags; } ;


 int AVFMT_NOFILE ;
 int av_write_trailer (TYPE_2__*) ;
 int avformat_free_context (TYPE_2__*) ;
 int avio_close (int ) ;
 int bfree (scalar_t__) ;
 int close_audio (struct ffmpeg_data*) ;
 int close_video (struct ffmpeg_data*) ;
 int free (int *) ;
 int memset (struct ffmpeg_data*,int ,int) ;

__attribute__((used)) static void ffmpeg_data_free(struct ffmpeg_data *data)
{
 if (data->initialized)
  av_write_trailer(data->output);

 if (data->video)
  close_video(data);
 if (data->audio_streams) {
  close_audio(data);
  free(data->audio_streams);
  data->audio_streams = ((void*)0);
 }

 if (data->output) {
  if ((data->output->oformat->flags & AVFMT_NOFILE) == 0)
   avio_close(data->output->pb);

  avformat_free_context(data->output);
 }

 if (data->last_error)
  bfree(data->last_error);

 memset(data, 0, sizeof(struct ffmpeg_data));
}
