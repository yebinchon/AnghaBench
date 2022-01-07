
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_h264_encoder {scalar_t__ obs_pix_fmt; scalar_t__ fullrange; int vt_pix_fmt; } ;
struct video_scale_info {scalar_t__ format; } ;


 int LOG_WARNING ;
 scalar_t__ VIDEO_FORMAT_I420 ;
 scalar_t__ VIDEO_FORMAT_I444 ;
 scalar_t__ VIDEO_FORMAT_NV12 ;
 int VT_BLOG (int ,char*) ;
 int kCVPixelFormatType_420YpCbCr8BiPlanarFullRange ;
 int kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange ;
 int kCVPixelFormatType_420YpCbCr8Planar ;
 int kCVPixelFormatType_420YpCbCr8PlanarFullRange ;

__attribute__((used)) static void vt_h264_video_info(void *data, struct video_scale_info *info)
{
 struct vt_h264_encoder *enc = data;

 if (info->format == VIDEO_FORMAT_I420) {
  enc->obs_pix_fmt = info->format;
  enc->vt_pix_fmt =
   enc->fullrange
    ? kCVPixelFormatType_420YpCbCr8PlanarFullRange
    : kCVPixelFormatType_420YpCbCr8Planar;
  return;
 }

 if (info->format == VIDEO_FORMAT_I444)
  VT_BLOG(LOG_WARNING, "I444 color format not supported");


 enc->obs_pix_fmt = VIDEO_FORMAT_NV12;
 enc->vt_pix_fmt =
  enc->fullrange
   ? kCVPixelFormatType_420YpCbCr8BiPlanarFullRange
   : kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange;

 info->format = enc->obs_pix_fmt;
}
