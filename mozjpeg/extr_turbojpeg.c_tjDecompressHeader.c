
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tjhandle ;


 int tjDecompressHeader2 (int ,unsigned char*,unsigned long,int*,int*,int*) ;

int tjDecompressHeader(tjhandle handle, unsigned char *jpegBuf,
                                 unsigned long jpegSize, int *width,
                                 int *height)
{
 int jpegSubsamp;

 return tjDecompressHeader2(handle, jpegBuf, jpegSize, width, height,
  &jpegSubsamp);
}
