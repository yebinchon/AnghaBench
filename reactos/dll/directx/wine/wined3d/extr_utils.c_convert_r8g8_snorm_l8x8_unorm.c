
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int UINT ;
typedef int LONG ;
typedef int DWORD ;
typedef unsigned char BYTE ;



__attribute__((used)) static void convert_r8g8_snorm_l8x8_unorm(const BYTE *src, BYTE *dst, UINT src_row_pitch, UINT src_slice_pitch,
        UINT dst_row_pitch, UINT dst_slice_pitch, UINT width, UINT height, UINT depth)
{
    unsigned int x, y, z;
    const DWORD *Source;
    unsigned char *Dest;





    for (z = 0; z < depth; z++)
    {
        for (y = 0; y < height; y++)
        {
            Source = (const DWORD *)(src + z * src_slice_pitch + y * src_row_pitch);
            Dest = dst + z * dst_slice_pitch + y * dst_row_pitch;
            for (x = 0; x < width; x++ )
            {
                LONG color = (*Source++);
                        Dest[0] = ((color >> 16) & 0xff);
                        Dest[1] = ((color >> 8 ) & 0xff) + 128;
                        Dest[2] = (color & 0xff) + 128;
                Dest += 4;
            }
        }
    }
}
