
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ffmpeg_image {int stream_idx; int file; int decoder; TYPE_2__* decoder_ctx; TYPE_1__* stream; TYPE_3__* fmt_ctx; } ;
struct TYPE_6__ {TYPE_1__** streams; } ;
struct TYPE_5__ {int codec_id; } ;
struct TYPE_4__ {TYPE_2__* codec; } ;


 int AVMEDIA_TYPE_VIDEO ;
 int LOG_WARNING ;
 int av_err2str (int) ;
 int av_find_best_stream (TYPE_3__*,int ,int,int,int *,int ) ;
 int avcodec_find_decoder (int ) ;
 int avcodec_open2 (TYPE_2__*,int ,int *) ;
 int blog (int ,char*,int ,...) ;

__attribute__((used)) static bool ffmpeg_image_open_decoder_context(struct ffmpeg_image *info)
{
 int ret = av_find_best_stream(info->fmt_ctx, AVMEDIA_TYPE_VIDEO, -1, 1,
          ((void*)0), 0);
 if (ret < 0) {
  blog(LOG_WARNING, "Couldn't find video stream in file '%s': %s",
       info->file, av_err2str(ret));
  return 0;
 }

 info->stream_idx = ret;
 info->stream = info->fmt_ctx->streams[ret];
 info->decoder_ctx = info->stream->codec;
 info->decoder = avcodec_find_decoder(info->decoder_ctx->codec_id);

 if (!info->decoder) {
  blog(LOG_WARNING, "Failed to find decoder for file '%s'",
       info->file);
  return 0;
 }

 ret = avcodec_open2(info->decoder_ctx, info->decoder, ((void*)0));
 if (ret < 0) {
  blog(LOG_WARNING,
       "Failed to open video codec for file '%s': "
       "%s",
       info->file, av_err2str(ret));
  return 0;
 }

 return 1;
}
