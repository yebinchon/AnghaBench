
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dds_pixel_format {int flags; int gmask; int amask; int bmask; int rmask; int bpp; int fourcc; int size; } ;
typedef int D3DFORMAT ;


 int D3DFMT_UNKNOWN ;
 int DDS_PF_ALPHA_ONLY ;
 int DDS_PF_BUMPDUDV ;
 int DDS_PF_BUMPLUMINANCE ;
 int DDS_PF_FOURCC ;
 int DDS_PF_LUMINANCE ;
 int DDS_PF_RGB ;
 int TRACE (char*,int ,int,int ,int ) ;
 int WARN (char*,int,int ,int ,int ,int,int ,int ) ;
 int dds_alpha_to_d3dformat (struct dds_pixel_format const*) ;
 int dds_bump_luminance_to_d3dformat (struct dds_pixel_format const*) ;
 int dds_bump_to_d3dformat (struct dds_pixel_format const*) ;
 int dds_fourcc_to_d3dformat (int ) ;
 int dds_luminance_to_d3dformat (struct dds_pixel_format const*) ;
 int dds_rgb_to_d3dformat (struct dds_pixel_format const*) ;

__attribute__((used)) static D3DFORMAT dds_pixel_format_to_d3dformat(const struct dds_pixel_format *pixel_format)
{
    TRACE("pixel_format: size %u, flags %#x, fourcc %#x, bpp %u.\n", pixel_format->size,
            pixel_format->flags, pixel_format->fourcc, pixel_format->bpp);
    TRACE("rmask %#x, gmask %#x, bmask %#x, amask %#x.\n", pixel_format->rmask, pixel_format->gmask,
            pixel_format->bmask, pixel_format->amask);

    if (pixel_format->flags & DDS_PF_FOURCC)
        return dds_fourcc_to_d3dformat(pixel_format->fourcc);
    if (pixel_format->flags & DDS_PF_RGB)
        return dds_rgb_to_d3dformat(pixel_format);
    if (pixel_format->flags & DDS_PF_LUMINANCE)
        return dds_luminance_to_d3dformat(pixel_format);
    if (pixel_format->flags & DDS_PF_ALPHA_ONLY)
        return dds_alpha_to_d3dformat(pixel_format);
    if (pixel_format->flags & DDS_PF_BUMPDUDV)
        return dds_bump_to_d3dformat(pixel_format);
    if (pixel_format->flags & DDS_PF_BUMPLUMINANCE)
        return dds_bump_luminance_to_d3dformat(pixel_format);

    WARN("Unknown pixel format (flags %#x, fourcc %#x, bpp %u, r %#x, g %#x, b %#x, a %#x)\n",
        pixel_format->flags, pixel_format->fourcc, pixel_format->bpp,
        pixel_format->rmask, pixel_format->gmask, pixel_format->bmask, pixel_format->amask);
    return D3DFMT_UNKNOWN;
}
