
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tjhandle ;


 int TJFLAG_NOREALLOC ;
 int TJ_YUV ;
 int getPixelFormat (int,int) ;
 unsigned long tjBufSizeYUV (int,int,int) ;
 int tjCompress2 (int ,unsigned char*,int,int,int,int ,unsigned char**,unsigned long*,int,int,int) ;
 int tjEncodeYUV2 (int ,unsigned char*,int,int,int,int ,unsigned char*,int,int) ;

int tjCompress(tjhandle handle, unsigned char *srcBuf, int width,
                         int pitch, int height, int pixelSize,
                         unsigned char *jpegBuf, unsigned long *jpegSize,
                         int jpegSubsamp, int jpegQual, int flags)
{
  int retval = 0;
  unsigned long size;

  if (flags & TJ_YUV) {
  size=tjBufSizeYUV(width, height, jpegSubsamp);
  retval=tjEncodeYUV2(handle, srcBuf, width, pitch, height,
                          getPixelFormat(pixelSize, flags), jpegBuf,
                          jpegSubsamp, flags);
  } else {
  retval=tjCompress2(handle, srcBuf, width, pitch, height,
                         getPixelFormat(pixelSize, flags), &jpegBuf, &size,
                         jpegSubsamp, jpegQual, flags | TJFLAG_NOREALLOC);
 }
 *jpegSize=size;
 return retval;
}
