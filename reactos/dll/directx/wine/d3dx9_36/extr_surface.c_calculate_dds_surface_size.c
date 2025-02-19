
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pixel_format_desc {scalar_t__ type; int block_width; int block_height; int block_byte_count; int bytes_per_pixel; } ;
typedef int UINT ;
typedef int HRESULT ;
typedef int D3DFORMAT ;


 int D3D_OK ;
 int E_NOTIMPL ;
 scalar_t__ FORMAT_UNKNOWN ;
 struct pixel_format_desc* get_format_info (int ) ;
 int max (int,int) ;

__attribute__((used)) static HRESULT calculate_dds_surface_size(D3DFORMAT format, UINT width, UINT height,
    UINT *pitch, UINT *size)
{
    const struct pixel_format_desc *format_desc = get_format_info(format);
    if (format_desc->type == FORMAT_UNKNOWN)
        return E_NOTIMPL;

    if (format_desc->block_width != 1 || format_desc->block_height != 1)
    {
        *pitch = format_desc->block_byte_count
            * max(1, (width + format_desc->block_width - 1) / format_desc->block_width);
        *size = *pitch
            * max(1, (height + format_desc->block_height - 1) / format_desc->block_height);
    }
    else
    {
        *pitch = width * format_desc->bytes_per_pixel;
        *size = *pitch * height;
    }

    return D3D_OK;
}
