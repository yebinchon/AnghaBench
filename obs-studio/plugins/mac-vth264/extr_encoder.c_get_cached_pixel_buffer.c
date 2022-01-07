
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_h264_encoder {int colorspace; int session; } ;
typedef int OSStatus ;
typedef int CVPixelBufferRef ;
typedef int CVPixelBufferPoolRef ;
typedef int CFStringRef ;


 int CVBufferSetAttachment (int ,int ,int ,int ) ;
 int CVPixelBufferPoolCreatePixelBuffer (int *,int ,int *) ;
 int STATUS_CHECK (int ) ;
 int VTCompressionSessionGetPixelBufferPool (int ) ;
 int kCVAttachmentMode_ShouldPropagate ;
 int kCVImageBufferColorPrimariesKey ;
 int kCVImageBufferColorPrimaries_ITU_R_709_2 ;
 int kCVImageBufferTransferFunctionKey ;
 int kCVImageBufferTransferFunction_ITU_R_709_2 ;
 int kCVImageBufferYCbCrMatrixKey ;
 int kCVReturnError ;
 int obs_to_vt_colorspace (int ) ;

bool get_cached_pixel_buffer(struct vt_h264_encoder *enc, CVPixelBufferRef *buf)
{
 OSStatus code;
 CVPixelBufferPoolRef pool =
  VTCompressionSessionGetPixelBufferPool(enc->session);
 if (!pool)
  return kCVReturnError;

 CVPixelBufferRef pixbuf;
 STATUS_CHECK(CVPixelBufferPoolCreatePixelBuffer(((void*)0), pool, &pixbuf));





 CFStringRef matrix = obs_to_vt_colorspace(enc->colorspace);

 CVBufferSetAttachment(pixbuf, kCVImageBufferYCbCrMatrixKey, matrix,
         kCVAttachmentMode_ShouldPropagate);
 CVBufferSetAttachment(pixbuf, kCVImageBufferColorPrimariesKey,
         kCVImageBufferColorPrimaries_ITU_R_709_2,
         kCVAttachmentMode_ShouldPropagate);
 CVBufferSetAttachment(pixbuf, kCVImageBufferTransferFunctionKey,
         kCVImageBufferTransferFunction_ITU_R_709_2,
         kCVAttachmentMode_ShouldPropagate);

 *buf = pixbuf;
 return 1;

fail:
 return 0;
}
