
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dds_pixel_format {int bpp; int rmask; int flags; int amask; } ;
typedef int D3DFORMAT ;


 int D3DFMT_A4L4 ;
 int D3DFMT_A8L8 ;
 int D3DFMT_L16 ;
 int D3DFMT_L8 ;
 int D3DFMT_UNKNOWN ;
 int DDS_PF_ALPHA ;
 int WARN (char*,int,int,int) ;

__attribute__((used)) static D3DFORMAT dds_luminance_to_d3dformat(const struct dds_pixel_format *pixel_format)
{
    if (pixel_format->bpp == 8)
    {
        if (pixel_format->rmask == 0xff)
            return D3DFMT_L8;
        if ((pixel_format->flags & DDS_PF_ALPHA) && pixel_format->rmask == 0x0f && pixel_format->amask == 0xf0)
            return D3DFMT_A4L4;
    }
    if (pixel_format->bpp == 16)
    {
        if (pixel_format->rmask == 0xffff)
            return D3DFMT_L16;
        if ((pixel_format->flags & DDS_PF_ALPHA) && pixel_format->rmask == 0x00ff && pixel_format->amask == 0xff00)
            return D3DFMT_A8L8;
    }

    WARN("Unknown luminance pixel format (bpp %u, l %#x, a %#x)\n",
        pixel_format->bpp, pixel_format->rmask, pixel_format->amask);
    return D3DFMT_UNKNOWN;
}
