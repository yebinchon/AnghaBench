
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dds_pixel_format {int size; scalar_t__ fourcc; int flags; int amask; int bmask; int gmask; int rmask; int bpp; } ;
struct TYPE_3__ {scalar_t__ format; int amask; int bmask; int gmask; int rmask; int bpp; } ;
typedef int HRESULT ;
typedef scalar_t__ D3DFORMAT ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ D3DFMT_UNKNOWN ;
 int D3D_OK ;
 int DDS_PF_ALPHA ;
 int DDS_PF_FOURCC ;
 int DDS_PF_RGB ;
 int E_NOTIMPL ;
 int WARN (char*,scalar_t__) ;
 scalar_t__ dds_fourcc_to_d3dformat (scalar_t__) ;
 int memset (struct dds_pixel_format*,int ,int) ;
 TYPE_1__* rgb_pixel_formats ;

__attribute__((used)) static HRESULT d3dformat_to_dds_pixel_format(struct dds_pixel_format *pixel_format, D3DFORMAT d3dformat)
{
    unsigned int i;

    memset(pixel_format, 0, sizeof(*pixel_format));

    pixel_format->size = sizeof(*pixel_format);

    for (i = 0; i < ARRAY_SIZE(rgb_pixel_formats); i++)
    {
        if (rgb_pixel_formats[i].format == d3dformat)
        {
            pixel_format->flags |= DDS_PF_RGB;
            pixel_format->bpp = rgb_pixel_formats[i].bpp;
            pixel_format->rmask = rgb_pixel_formats[i].rmask;
            pixel_format->gmask = rgb_pixel_formats[i].gmask;
            pixel_format->bmask = rgb_pixel_formats[i].bmask;
            pixel_format->amask = rgb_pixel_formats[i].amask;
            if (pixel_format->amask) pixel_format->flags |= DDS_PF_ALPHA;
            return D3D_OK;
        }
    }


    if (dds_fourcc_to_d3dformat(d3dformat) != D3DFMT_UNKNOWN)
    {
        pixel_format->flags |= DDS_PF_FOURCC;
        pixel_format->fourcc = d3dformat;
        return D3D_OK;
    }

    WARN("Unknown pixel format %#x\n", d3dformat);
    return E_NOTIMPL;
}
