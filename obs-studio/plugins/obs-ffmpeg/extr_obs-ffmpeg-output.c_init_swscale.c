
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scale_height; int scale_width; int format; int height; int width; } ;
struct ffmpeg_data {int swscale; TYPE_1__ config; } ;
struct TYPE_5__ {int pix_fmt; } ;
typedef TYPE_2__ AVCodecContext ;


 int LOG_WARNING ;
 int SWS_BICUBIC ;
 int ffmpeg_log_error (int ,struct ffmpeg_data*,char*) ;
 int sws_getContext (int ,int ,int ,int ,int ,int ,int ,int *,int *,int *) ;

__attribute__((used)) static bool init_swscale(struct ffmpeg_data *data, AVCodecContext *context)
{
 data->swscale = sws_getContext(
  data->config.width, data->config.height, data->config.format,
  data->config.scale_width, data->config.scale_height,
  context->pix_fmt, SWS_BICUBIC, ((void*)0), ((void*)0), ((void*)0));

 if (!data->swscale) {
  ffmpeg_log_error(LOG_WARNING, data,
     "Could not initialize swscale");
  return 0;
 }

 return 1;
}
