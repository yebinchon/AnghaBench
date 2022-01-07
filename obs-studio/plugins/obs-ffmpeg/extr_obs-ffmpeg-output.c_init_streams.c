
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ffmpeg_data {int num_audio_streams; int audio_streams; TYPE_1__* output; } ;
struct TYPE_4__ {scalar_t__ video_codec; scalar_t__ audio_codec; } ;
struct TYPE_3__ {TYPE_2__* oformat; } ;
typedef TYPE_2__ AVOutputFormat ;


 scalar_t__ AV_CODEC_ID_NONE ;
 int calloc (int,int) ;
 int create_audio_stream (struct ffmpeg_data*,int) ;
 int create_video_stream (struct ffmpeg_data*) ;

__attribute__((used)) static inline bool init_streams(struct ffmpeg_data *data)
{
 AVOutputFormat *format = data->output->oformat;

 if (format->video_codec != AV_CODEC_ID_NONE)
  if (!create_video_stream(data))
   return 0;

 if (format->audio_codec != AV_CODEC_ID_NONE &&
     data->num_audio_streams) {
  data->audio_streams =
   calloc(1, data->num_audio_streams * sizeof(void *));
  for (int i = 0; i < data->num_audio_streams; i++) {
   if (!create_audio_stream(data, i))
    return 0;
  }
 }

 return 1;
}
