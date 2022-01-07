
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ffmpeg_image {char const* file; int stream_idx; TYPE_1__* decoder_ctx; int format; int cy; int cx; int fmt_ctx; } ;
struct TYPE_2__ {int pix_fmt; int height; int width; } ;


 int LOG_WARNING ;
 int av_err2str (int) ;
 int avformat_find_stream_info (int ,int *) ;
 int avformat_open_input (int *,char const*,int *,int *) ;
 int blog (int ,char*,char const*,int ) ;
 int ffmpeg_image_free (struct ffmpeg_image*) ;
 int ffmpeg_image_open_decoder_context (struct ffmpeg_image*) ;
 int memset (struct ffmpeg_image*,int ,int) ;

__attribute__((used)) static bool ffmpeg_image_init(struct ffmpeg_image *info, const char *file)
{
 int ret;

 if (!file || !*file)
  return 0;

 memset(info, 0, sizeof(struct ffmpeg_image));
 info->file = file;
 info->stream_idx = -1;

 ret = avformat_open_input(&info->fmt_ctx, file, ((void*)0), ((void*)0));
 if (ret < 0) {
  blog(LOG_WARNING, "Failed to open file '%s': %s", info->file,
       av_err2str(ret));
  return 0;
 }

 ret = avformat_find_stream_info(info->fmt_ctx, ((void*)0));
 if (ret < 0) {
  blog(LOG_WARNING,
       "Could not find stream info for file '%s':"
       " %s",
       info->file, av_err2str(ret));
  goto fail;
 }

 if (!ffmpeg_image_open_decoder_context(info))
  goto fail;

 info->cx = info->decoder_ctx->width;
 info->cy = info->decoder_ctx->height;
 info->format = info->decoder_ctx->pix_fmt;
 return 1;

fail:
 ffmpeg_image_free(info);
 return 0;
}
