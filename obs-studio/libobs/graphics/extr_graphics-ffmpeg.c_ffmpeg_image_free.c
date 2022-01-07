
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_image {int fmt_ctx; int decoder_ctx; } ;


 int avcodec_close (int ) ;
 int avformat_close_input (int *) ;

__attribute__((used)) static void ffmpeg_image_free(struct ffmpeg_image *info)
{
 avcodec_close(info->decoder_ctx);
 avformat_close_input(&info->fmt_ctx);
}
