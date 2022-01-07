
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_scaler {int swscale; int src_height; } ;
typedef struct video_scaler video_scaler_t ;
struct video_scale_info {int height; int width; int range; int colorspace; int format; } ;
typedef enum video_scale_type { ____Placeholder_video_scale_type } video_scale_type ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int AV_PIX_FMT_NONE ;
 int FIXED_1_0 ;
 int LOG_DEBUG ;
 int LOG_ERROR ;
 int VIDEO_SCALER_BAD_CONVERSION ;
 int VIDEO_SCALER_FAILED ;
 int VIDEO_SCALER_SUCCESS ;
 int blog (int ,char*) ;
 struct video_scaler* bzalloc (int) ;
 int* get_ffmpeg_coeffs (int ) ;
 int get_ffmpeg_range_type (int ) ;
 int get_ffmpeg_scale_type (int) ;
 int get_ffmpeg_video_format (int ) ;
 int sws_getCachedContext (int *,int ,int ,int,int ,int ,int,int,int *,int *,int *) ;
 int sws_setColorspaceDetails (int ,int const*,int,int const*,int,int ,int ,int ) ;
 int video_scaler_destroy (struct video_scaler*) ;

int video_scaler_create(video_scaler_t **scaler_out,
   const struct video_scale_info *dst,
   const struct video_scale_info *src,
   enum video_scale_type type)
{
 enum AVPixelFormat format_src = get_ffmpeg_video_format(src->format);
 enum AVPixelFormat format_dst = get_ffmpeg_video_format(dst->format);
 int scale_type = get_ffmpeg_scale_type(type);
 const int *coeff_src = get_ffmpeg_coeffs(src->colorspace);
 const int *coeff_dst = get_ffmpeg_coeffs(dst->colorspace);
 int range_src = get_ffmpeg_range_type(src->range);
 int range_dst = get_ffmpeg_range_type(dst->range);
 struct video_scaler *scaler;
 int ret;

 if (!scaler_out)
  return VIDEO_SCALER_FAILED;

 if (format_src == AV_PIX_FMT_NONE || format_dst == AV_PIX_FMT_NONE)
  return VIDEO_SCALER_BAD_CONVERSION;

 scaler = bzalloc(sizeof(struct video_scaler));
 scaler->src_height = src->height;

 scaler->swscale = sws_getCachedContext(((void*)0), src->width, src->height,
            format_src, dst->width,
            dst->height, format_dst,
            scale_type, ((void*)0), ((void*)0), ((void*)0));
 if (!scaler->swscale) {
  blog(LOG_ERROR, "video_scaler_create: Could not create "
    "swscale");
  goto fail;
 }

 ret = sws_setColorspaceDetails(scaler->swscale, coeff_src, range_src,
           coeff_dst, range_dst, 0, FIXED_1_0,
           FIXED_1_0);
 if (ret < 0) {
  blog(LOG_DEBUG, "video_scaler_create: "
    "sws_setColorspaceDetails failed, ignoring");
 }

 *scaler_out = scaler;
 return VIDEO_SCALER_SUCCESS;

fail:
 video_scaler_destroy(scaler);
 return VIDEO_SCALER_FAILED;
}
