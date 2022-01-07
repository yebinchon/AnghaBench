
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tjhandle ;


 int getPixelFormat (int,int) ;
 int tjEncodeYUV2 (int ,unsigned char*,int,int,int,int ,unsigned char*,int,int) ;

int tjEncodeYUV(tjhandle handle, unsigned char *srcBuf, int width,
                          int pitch, int height, int pixelSize,
                          unsigned char *dstBuf, int subsamp, int flags)
{
 return tjEncodeYUV2(handle, srcBuf, width, pitch, height,
                      getPixelFormat(pixelSize, flags), dstBuf, subsamp,
                      flags);
}
