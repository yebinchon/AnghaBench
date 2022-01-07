
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct enc_encoder {int frame_size; int frame_size_bytes; TYPE_1__* context; int samples; scalar_t__ audio_size; TYPE_2__* aframe; int codec; } ;
struct TYPE_4__ {int sample_rate; int channel_layout; int channels; int format; } ;
struct TYPE_3__ {int frame_size; int sample_fmt; int channels; int sample_rate; int channel_layout; } ;


 int av_err2str (int) ;
 TYPE_2__* av_frame_alloc () ;
 int av_samples_alloc (int ,int *,int ,int,int ,int ) ;
 int avcodec_open2 (TYPE_1__*,int ,int *) ;
 int warn (char*,...) ;

__attribute__((used)) static bool initialize_codec(struct enc_encoder *enc)
{
 int ret;

 enc->aframe = av_frame_alloc();
 if (!enc->aframe) {
  warn("Failed to allocate audio frame");
  return 0;
 }

 ret = avcodec_open2(enc->context, enc->codec, ((void*)0));
 if (ret < 0) {
  warn("Failed to open AAC codec: %s", av_err2str(ret));
  return 0;
 }
 enc->aframe->format = enc->context->sample_fmt;
 enc->aframe->channels = enc->context->channels;
 enc->aframe->channel_layout = enc->context->channel_layout;
 enc->aframe->sample_rate = enc->context->sample_rate;

 enc->frame_size = enc->context->frame_size;
 if (!enc->frame_size)
  enc->frame_size = 1024;

 enc->frame_size_bytes = enc->frame_size * (int)enc->audio_size;

 ret = av_samples_alloc(enc->samples, ((void*)0), enc->context->channels,
          enc->frame_size, enc->context->sample_fmt, 0);
 if (ret < 0) {
  warn("Failed to create audio buffer: %s", av_err2str(ret));
  return 0;
 }

 return 1;
}
