
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dds_pixel_format {scalar_t__ bpp; scalar_t__ rmask; scalar_t__ gmask; scalar_t__ bmask; int flags; scalar_t__ amask; } ;
struct TYPE_3__ {scalar_t__ bpp; scalar_t__ rmask; scalar_t__ gmask; scalar_t__ bmask; scalar_t__ amask; int format; } ;
typedef int D3DFORMAT ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int D3DFMT_UNKNOWN ;
 int DDS_PF_ALPHA ;
 int WARN (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_1__* rgb_pixel_formats ;

__attribute__((used)) static D3DFORMAT dds_rgb_to_d3dformat(const struct dds_pixel_format *pixel_format)
{
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(rgb_pixel_formats); i++)
    {
        if (rgb_pixel_formats[i].bpp == pixel_format->bpp
            && rgb_pixel_formats[i].rmask == pixel_format->rmask
            && rgb_pixel_formats[i].gmask == pixel_format->gmask
            && rgb_pixel_formats[i].bmask == pixel_format->bmask)
        {
            if ((pixel_format->flags & DDS_PF_ALPHA) && rgb_pixel_formats[i].amask == pixel_format->amask)
                return rgb_pixel_formats[i].format;
            if (rgb_pixel_formats[i].amask == 0)
                return rgb_pixel_formats[i].format;
        }
    }

    WARN("Unknown RGB pixel format (%#x, %#x, %#x, %#x)\n",
        pixel_format->rmask, pixel_format->gmask, pixel_format->bmask, pixel_format->amask);
    return D3DFMT_UNKNOWN;
}
