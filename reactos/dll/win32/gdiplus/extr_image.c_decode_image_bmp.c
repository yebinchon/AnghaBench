
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ format; } ;
typedef int IStream ;
typedef scalar_t__ GpStatus ;
typedef int GpImage ;
typedef TYPE_1__ GpBitmap ;


 int GUID_ContainerFormatBmp ;
 scalar_t__ Ok ;
 scalar_t__ PixelFormat32bppARGB ;
 scalar_t__ PixelFormat32bppRGB ;
 scalar_t__ decode_image_wic (int *,int *,int *,int **) ;

__attribute__((used)) static GpStatus decode_image_bmp(IStream* stream, GpImage **image)
{
    GpStatus status;
    GpBitmap* bitmap;

    status = decode_image_wic(stream, &GUID_ContainerFormatBmp, ((void*)0), image);

    bitmap = (GpBitmap*)*image;

    if (status == Ok && bitmap->format == PixelFormat32bppARGB)
    {

        bitmap->format = PixelFormat32bppRGB;
    }

    return status;
}
