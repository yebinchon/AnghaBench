
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tjhandle ;


 int tjEncodeYUV3 (int ,unsigned char*,int,int,int,int,unsigned char*,int,int,int) ;

int tjEncodeYUV2(tjhandle handle, unsigned char *srcBuf, int width,
                           int pitch, int height, int pixelFormat,
                           unsigned char *dstBuf, int subsamp, int flags)
{
 return tjEncodeYUV3(handle, srcBuf, width, pitch, height, pixelFormat,
  dstBuf, 4, subsamp, flags);
}
