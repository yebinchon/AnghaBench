
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ffmpeg_data {int num_audio_streams; scalar_t__* aframe; TYPE_1__** audio_streams; scalar_t__** samples; int ** excess_frames; } ;
struct TYPE_2__ {int codec; } ;


 size_t MAX_AV_PLANES ;
 int av_frame_free (scalar_t__*) ;
 int av_freep (scalar_t__*) ;
 int avcodec_close (int ) ;
 int circlebuf_free (int *) ;

__attribute__((used)) static void close_audio(struct ffmpeg_data *data)
{
 for (int idx = 0; idx < data->num_audio_streams; idx++) {
  for (size_t i = 0; i < MAX_AV_PLANES; i++)
   circlebuf_free(&data->excess_frames[idx][i]);

  if (data->samples[idx][0])
   av_freep(&data->samples[idx][0]);
  if (data->audio_streams[idx])
   avcodec_close(data->audio_streams[idx]->codec);
  if (data->aframe[idx])
   av_frame_free(&data->aframe[idx]);
 }
}
