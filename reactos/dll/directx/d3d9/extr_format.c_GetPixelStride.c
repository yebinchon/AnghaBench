
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef int D3DFORMAT ;


 scalar_t__ GetBytesPerPixel (int ) ;

DWORD GetPixelStride(D3DFORMAT Format)
{
    DWORD Bpp = GetBytesPerPixel(Format);

    if (0 == Bpp)
    {

    }

    return Bpp;
}
