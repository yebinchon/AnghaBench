
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int audio_encoder_id; int audio_encoder; int video_encoder_id; int video_encoder; } ;
struct ffmpeg_data {TYPE_3__ config; TYPE_2__* output; } ;
struct TYPE_5__ {TYPE_1__* oformat; } ;
struct TYPE_4__ {void* audio_codec; void* video_codec; } ;


 void* get_codec_id (int ,int ) ;

__attribute__((used)) static void set_encoder_ids(struct ffmpeg_data *data)
{
 data->output->oformat->video_codec = get_codec_id(
  data->config.video_encoder, data->config.video_encoder_id);

 data->output->oformat->audio_codec = get_codec_id(
  data->config.audio_encoder, data->config.audio_encoder_id);
}
