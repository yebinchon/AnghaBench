
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct ffmpeg_image {scalar_t__ format; int cy; int file; int cx; } ;
struct SwsContext {int dummy; } ;
struct TYPE_3__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_1__ AVFrame ;


 scalar_t__ AV_PIX_FMT_BGR0 ;
 scalar_t__ AV_PIX_FMT_BGRA ;
 scalar_t__ AV_PIX_FMT_RGBA ;
 int LOG_WARNING ;
 int SWS_POINT ;
 int av_err2str (int) ;
 int blog (int ,char*,int ,...) ;
 int memcpy (int *,scalar_t__,int) ;
 int sws_freeContext (struct SwsContext*) ;
 struct SwsContext* sws_getContext (int ,int,scalar_t__,int ,int,scalar_t__,int ,int *,int *,int *) ;
 int sws_scale (struct SwsContext*,int const* const*,int*,int ,int,int **,int*) ;

__attribute__((used)) static bool ffmpeg_image_reformat_frame(struct ffmpeg_image *info,
     AVFrame *frame, uint8_t *out,
     int linesize)
{
 struct SwsContext *sws_ctx = ((void*)0);
 int ret = 0;

 if (info->format == AV_PIX_FMT_RGBA ||
     info->format == AV_PIX_FMT_BGRA ||
     info->format == AV_PIX_FMT_BGR0) {

  if (linesize != frame->linesize[0]) {
   int min_line = linesize < frame->linesize[0]
            ? linesize
            : frame->linesize[0];

   for (int y = 0; y < info->cy; y++)
    memcpy(out + y * linesize,
           frame->data[0] + y * frame->linesize[0],
           min_line);
  } else {
   memcpy(out, frame->data[0], linesize * info->cy);
  }

 } else {
  sws_ctx = sws_getContext(info->cx, info->cy, info->format,
      info->cx, info->cy, AV_PIX_FMT_BGRA,
      SWS_POINT, ((void*)0), ((void*)0), ((void*)0));
  if (!sws_ctx) {
   blog(LOG_WARNING,
        "Failed to create scale context "
        "for '%s'",
        info->file);
   return 0;
  }

  ret = sws_scale(sws_ctx, (const uint8_t *const *)frame->data,
    frame->linesize, 0, info->cy, &out, &linesize);
  sws_freeContext(sws_ctx);

  if (ret < 0) {
   blog(LOG_WARNING, "sws_scale failed for '%s': %s",
        info->file, av_err2str(ret));
   return 0;
  }

  info->format = AV_PIX_FMT_BGRA;
 }

 return 1;
}
