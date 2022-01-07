
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int numerator; unsigned int denominator; } ;
struct wined3d_format {int* flags; unsigned int block_width; unsigned int block_height; unsigned int block_byte_count; unsigned int byte_count; TYPE_1__ height_scale; } ;


 int TRACE (char*,unsigned int,unsigned int) ;
 int WINED3DFMT_FLAG_BLOCKS ;
 int WINED3DFMT_FLAG_HEIGHT_SCALE ;
 size_t WINED3D_GL_RES_TYPE_TEX_2D ;

void wined3d_format_calculate_pitch(const struct wined3d_format *format, unsigned int alignment,
        unsigned int width, unsigned int height, unsigned int *row_pitch, unsigned int *slice_pitch)
{


    if (format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & WINED3DFMT_FLAG_BLOCKS)
    {
        unsigned int row_block_count = (width + format->block_width - 1) / format->block_width;
        unsigned int slice_block_count = (height + format->block_height - 1) / format->block_height;
        *row_pitch = row_block_count * format->block_byte_count;
        *row_pitch = (*row_pitch + alignment - 1) & ~(alignment - 1);
        *slice_pitch = *row_pitch * slice_block_count;
    }
    else
    {
        *row_pitch = format->byte_count * width;
        *row_pitch = (*row_pitch + alignment - 1) & ~(alignment - 1);
        *slice_pitch = *row_pitch * height;
    }

    if (format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & WINED3DFMT_FLAG_HEIGHT_SCALE)
    {

        *slice_pitch *= format->height_scale.numerator;
        *slice_pitch /= format->height_scale.denominator;
    }

    TRACE("Returning row pitch %u, slice pitch %u.\n", *row_pitch, *slice_pitch);
}
