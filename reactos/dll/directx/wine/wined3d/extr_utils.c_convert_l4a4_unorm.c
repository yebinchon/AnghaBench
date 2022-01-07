
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int UINT ;
typedef unsigned char BYTE ;



__attribute__((used)) static void convert_l4a4_unorm(const BYTE *src, BYTE *dst, UINT src_row_pitch, UINT src_slice_pitch,
        UINT dst_row_pitch, UINT dst_slice_pitch, UINT width, UINT height, UINT depth)
{




    unsigned int x, y, z;
    const unsigned char *Source;
    unsigned char *Dest;

    for (z = 0; z < depth; z++)
    {
        for (y = 0; y < height; y++)
        {
            Source = src + z * src_slice_pitch + y * src_row_pitch;
            Dest = dst + z * dst_slice_pitch + y * dst_row_pitch;
            for (x = 0; x < width; x++ )
            {
                unsigned char color = (*Source++);
                        Dest[1] = (color & 0xf0u) << 0;
                        Dest[0] = (color & 0x0fu) << 4;
                Dest += 2;
            }
        }
    }
}
