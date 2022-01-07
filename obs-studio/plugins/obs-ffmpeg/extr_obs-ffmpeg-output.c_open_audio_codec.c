
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int audio_settings; } ;
struct ffmpeg_data {int frame_size; int * samples; int acodec; TYPE_6__** aframe; TYPE_2__ config; TYPE_1__** audio_streams; } ;
struct TYPE_10__ {int sample_rate; int channel_layout; int channels; int format; } ;
struct TYPE_9__ {int strict_std_compliance; int frame_size; int sample_fmt; int channels; int sample_rate; int channel_layout; } ;
struct TYPE_7__ {TYPE_3__* codec; } ;
typedef TYPE_3__ AVCodecContext ;


 int LOG_WARNING ;
 int av_err2str (int) ;
 TYPE_6__* av_frame_alloc () ;
 int av_samples_alloc (int ,int *,int ,int,int ,int ) ;
 int avcodec_open2 (TYPE_3__*,int ,int *) ;
 int ffmpeg_log_error (int ,struct ffmpeg_data*,char*,...) ;
 int parse_params (TYPE_3__*,char**) ;
 int strlist_free (char**) ;
 char** strlist_split (int ,char,int) ;

__attribute__((used)) static bool open_audio_codec(struct ffmpeg_data *data, int idx)
{
 AVCodecContext *context = data->audio_streams[idx]->codec;
 char **opts = strlist_split(data->config.audio_settings, ' ', 0);
 int ret;

 if (opts) {
  parse_params(context, opts);
  strlist_free(opts);
 }

 data->aframe[idx] = av_frame_alloc();
 if (!data->aframe[idx]) {
  ffmpeg_log_error(LOG_WARNING, data,
     "Failed to allocate audio frame");
  return 0;
 }

 data->aframe[idx]->format = context->sample_fmt;
 data->aframe[idx]->channels = context->channels;
 data->aframe[idx]->channel_layout = context->channel_layout;
 data->aframe[idx]->sample_rate = context->sample_rate;

 context->strict_std_compliance = -2;

 ret = avcodec_open2(context, data->acodec, ((void*)0));
 if (ret < 0) {
  ffmpeg_log_error(LOG_WARNING, data,
     "Failed to open audio codec: %s",
     av_err2str(ret));
  return 0;
 }

 data->frame_size = context->frame_size ? context->frame_size : 1024;

 ret = av_samples_alloc(data->samples[idx], ((void*)0), context->channels,
          data->frame_size, context->sample_fmt, 0);
 if (ret < 0) {
  ffmpeg_log_error(LOG_WARNING, data,
     "Failed to create audio buffer: %s",
     av_err2str(ret));
  return 0;
 }

 return 1;
}
