
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IStream ;
typedef int GpStatus ;
typedef int GpImage ;


 int GUID_ContainerFormatJpeg ;
 int decode_image_wic (int *,int *,int *,int **) ;

__attribute__((used)) static GpStatus decode_image_jpeg(IStream* stream, GpImage **image)
{
    return decode_image_wic(stream, &GUID_ContainerFormatJpeg, ((void*)0), image);
}
