
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_palette {TYPE_1__* colors; } ;
struct wined3d_color_key {int dummy; } ;
struct TYPE_2__ {int rgbRed; int rgbGreen; int rgbBlue; } ;
typedef int DWORD ;
typedef size_t BYTE ;


 int FIXME (char*) ;
 int memset (size_t*,int ,unsigned int) ;

__attribute__((used)) static void convert_p8_uint_b8g8r8a8_unorm(const BYTE *src, unsigned int src_pitch,
        BYTE *dst, unsigned int dst_pitch, unsigned int width, unsigned int height,
        const struct wined3d_palette *palette, const struct wined3d_color_key *color_key)
{
    const BYTE *src_row;
    unsigned int x, y;
    DWORD *dst_row;

    if (!palette)
    {

        FIXME("P8 surface loaded without a palette.\n");

        for (y = 0; y < height; ++y)
        {
            memset(&dst[dst_pitch * y], 0, width * 4);
        }

        return;
    }

    for (y = 0; y < height; ++y)
    {
        src_row = &src[src_pitch * y];
        dst_row = (DWORD *)&dst[dst_pitch * y];
        for (x = 0; x < width; ++x)
        {
            BYTE src_color = src_row[x];
            dst_row[x] = 0xff000000
                    | (palette->colors[src_color].rgbRed << 16)
                    | (palette->colors[src_color].rgbGreen << 8)
                    | palette->colors[src_color].rgbBlue;
        }
    }
}
