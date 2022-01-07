
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct enc_encoder {TYPE_1__* context; } ;
struct audio_convert_info {int speakers; scalar_t__ samples_per_sec; int format; } ;
struct TYPE_2__ {int channel_layout; scalar_t__ sample_rate; int sample_fmt; } ;


 int convert_ff_channel_layout (int ) ;
 int convert_ffmpeg_sample_format (int ) ;

__attribute__((used)) static void enc_audio_info(void *data, struct audio_convert_info *info)
{
 struct enc_encoder *enc = data;
 info->format = convert_ffmpeg_sample_format(enc->context->sample_fmt);
 info->samples_per_sec = (uint32_t)enc->context->sample_rate;
 info->speakers =
  convert_ff_channel_layout(enc->context->channel_layout);
}
