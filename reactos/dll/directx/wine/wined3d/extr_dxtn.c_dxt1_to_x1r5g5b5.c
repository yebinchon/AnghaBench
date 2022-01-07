
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef unsigned int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int TRACE (char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ TRUE ;
 int pfetch_2d_texel_rgba_dxt1 (int ,int const*,unsigned int,unsigned int,unsigned int*) ;

__attribute__((used)) static inline BOOL dxt1_to_x1r5g5b5(const BYTE *src, BYTE *dst, DWORD pitch_in,
        DWORD pitch_out, unsigned int w, unsigned int h, BOOL alpha)
{
    unsigned int x, y;
    DWORD color;

    TRACE("Converting %ux%u pixels, pitches %u %u\n", w, h, pitch_in, pitch_out);

    for (y = 0; y < h; ++y)
    {
        WORD *dst_line = (WORD *)(dst + y * pitch_out);
        for (x = 0; x < w; ++x)
        {

            pfetch_2d_texel_rgba_dxt1(0, src + (y / 4) * pitch_in + (x / 4) * 16,
                                      x & 3, y & 3, &color);
            if (alpha)
            {
                dst_line[x] = ((color & 0x80000000) >> 16) | ((color & 0xf80000) >> 19) |
                              ((color & 0xf800) >> 6) | ((color & 0xf8) << 7);
            }
            else
            {
                dst_line[x] = 0x8000 | ((color & 0xf80000) >> 19) |
                              ((color & 0xf800) >> 6) | ((color & 0xf8) << 7);
            }
        }
    }

    return TRUE;
}
