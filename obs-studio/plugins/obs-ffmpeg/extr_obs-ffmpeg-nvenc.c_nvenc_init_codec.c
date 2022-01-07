
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvenc_encoder {int initialized; TYPE_2__* vframe; TYPE_1__* context; int nvenc; } ;
struct TYPE_5__ {int color_range; int colorspace; int height; int width; int format; } ;
struct TYPE_4__ {int color_range; int colorspace; int height; int width; int pix_fmt; } ;


 int av_err2str (int) ;
 TYPE_2__* av_frame_alloc () ;
 int av_frame_get_buffer (TYPE_2__*,int ) ;
 int avcodec_open2 (TYPE_1__*,int ,int *) ;
 int base_get_alignment () ;
 int warn (char*,...) ;

__attribute__((used)) static bool nvenc_init_codec(struct nvenc_encoder *enc)
{
 int ret;

 ret = avcodec_open2(enc->context, enc->nvenc, ((void*)0));
 if (ret < 0) {
  warn("Failed to open NVENC codec: %s", av_err2str(ret));
  return 0;
 }

 enc->vframe = av_frame_alloc();
 if (!enc->vframe) {
  warn("Failed to allocate video frame");
  return 0;
 }

 enc->vframe->format = enc->context->pix_fmt;
 enc->vframe->width = enc->context->width;
 enc->vframe->height = enc->context->height;
 enc->vframe->colorspace = enc->context->colorspace;
 enc->vframe->color_range = enc->context->color_range;

 ret = av_frame_get_buffer(enc->vframe, base_get_alignment());
 if (ret < 0) {
  warn("Failed to allocate vframe: %s", av_err2str(ret));
  return 0;
 }

 enc->initialized = 1;
 return 1;
}
