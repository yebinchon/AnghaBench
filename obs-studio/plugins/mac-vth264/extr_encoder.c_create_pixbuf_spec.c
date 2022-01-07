
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_h264_encoder {int height; int width; int vt_pix_fmt; } ;
typedef int CFNumberRef ;
typedef int CFMutableDictionaryRef ;


 int CFDictionaryAddValue (int ,int ,int ) ;
 int CFDictionaryCreateMutable (int ,int,int *,int *) ;
 int CFNumberCreate (int *,int ,int *) ;
 int CFRelease (int ) ;
 int kCFAllocatorDefault ;
 int kCFNumberSInt32Type ;
 int kCFTypeDictionaryKeyCallBacks ;
 int kCFTypeDictionaryValueCallBacks ;
 int kCVPixelBufferHeightKey ;
 int kCVPixelBufferPixelFormatTypeKey ;
 int kCVPixelBufferWidthKey ;

__attribute__((used)) static inline CFMutableDictionaryRef
create_pixbuf_spec(struct vt_h264_encoder *enc)
{
 CFMutableDictionaryRef pixbuf_spec = CFDictionaryCreateMutable(
  kCFAllocatorDefault, 3, &kCFTypeDictionaryKeyCallBacks,
  &kCFTypeDictionaryValueCallBacks);

 CFNumberRef n =
  CFNumberCreate(((void*)0), kCFNumberSInt32Type, &enc->vt_pix_fmt);
 CFDictionaryAddValue(pixbuf_spec, kCVPixelBufferPixelFormatTypeKey, n);
 CFRelease(n);

 n = CFNumberCreate(((void*)0), kCFNumberSInt32Type, &enc->width);
 CFDictionaryAddValue(pixbuf_spec, kCVPixelBufferWidthKey, n);
 CFRelease(n);

 n = CFNumberCreate(((void*)0), kCFNumberSInt32Type, &enc->height);
 CFDictionaryAddValue(pixbuf_spec, kCVPixelBufferHeightKey, n);
 CFRelease(n);

 return pixbuf_spec;
}
