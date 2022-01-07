
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tjhandle ;


 int TJ_YUV ;
 int getPixelFormat (int,int) ;
 int tjDecompress2 (int ,unsigned char*,unsigned long,unsigned char*,int,int,int,int ,int) ;
 int tjDecompressToYUV (int ,unsigned char*,unsigned long,unsigned char*,int) ;

int tjDecompress(tjhandle handle, unsigned char *jpegBuf,
                           unsigned long jpegSize, unsigned char *dstBuf,
                           int width, int pitch, int height, int pixelSize,
                           int flags)
{
 if(flags&TJ_YUV)
  return tjDecompressToYUV(handle, jpegBuf, jpegSize, dstBuf, flags);
 else
  return tjDecompress2(handle, jpegBuf, jpegSize, dstBuf, width, pitch,
   height, getPixelFormat(pixelSize, flags), flags);
}
