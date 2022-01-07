
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int color_range; int color_space; int video_settings; } ;
struct ffmpeg_data {TYPE_7__* vframe; TYPE_2__ config; TYPE_6__* vcodec; TYPE_1__* video; } ;
struct TYPE_13__ {int color_range; int colorspace; int height; int width; int format; } ;
struct TYPE_12__ {int name; } ;
struct TYPE_11__ {int height; int width; int pix_fmt; int priv_data; } ;
struct TYPE_9__ {TYPE_3__* codec; } ;
typedef TYPE_3__ AVCodecContext ;


 int LOG_WARNING ;
 int av_err2str (int) ;
 TYPE_7__* av_frame_alloc () ;
 int av_frame_get_buffer (TYPE_7__*,int ) ;
 int av_opt_set (int ,char*,char*,int ) ;
 int avcodec_open2 (TYPE_3__*,TYPE_6__*,int *) ;
 int base_get_alignment () ;
 int blog (int ,char*) ;
 int ffmpeg_log_error (int ,struct ffmpeg_data*,char*,...) ;
 int parse_params (TYPE_3__*,char**) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlist_free (char**) ;
 char** strlist_split (int ,char,int) ;

__attribute__((used)) static bool open_video_codec(struct ffmpeg_data *data)
{
 AVCodecContext *context = data->video->codec;
 char **opts = strlist_split(data->config.video_settings, ' ', 0);
 int ret;

 if (strcmp(data->vcodec->name, "libx264") == 0)
  av_opt_set(context->priv_data, "preset", "veryfast", 0);

 if (opts) {

  if (!parse_params(context, opts) &&
      strcmp(data->vcodec->name, "libx264") == 0)
   blog(LOG_WARNING,
        "If you're trying to set x264 parameters, use x264-params=name=value:name=value");
  strlist_free(opts);
 }

 ret = avcodec_open2(context, data->vcodec, ((void*)0));
 if (ret < 0) {
  ffmpeg_log_error(LOG_WARNING, data,
     "Failed to open video codec: %s",
     av_err2str(ret));
  return 0;
 }

 data->vframe = av_frame_alloc();
 if (!data->vframe) {
  ffmpeg_log_error(LOG_WARNING, data,
     "Failed to allocate video frame");
  return 0;
 }

 data->vframe->format = context->pix_fmt;
 data->vframe->width = context->width;
 data->vframe->height = context->height;
 data->vframe->colorspace = data->config.color_space;
 data->vframe->color_range = data->config.color_range;

 ret = av_frame_get_buffer(data->vframe, base_get_alignment());
 if (ret < 0) {
  ffmpeg_log_error(LOG_WARNING, data,
     "Failed to allocate vframe: %s",
     av_err2str(ret));
  return 0;
 }

 return 1;
}
