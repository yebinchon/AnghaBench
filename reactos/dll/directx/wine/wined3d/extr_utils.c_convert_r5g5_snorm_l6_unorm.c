
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int UINT ;
typedef int BYTE ;



__attribute__((used)) static void convert_r5g5_snorm_l6_unorm(const BYTE *src, BYTE *dst, UINT src_row_pitch, UINT src_slice_pitch,
        UINT dst_row_pitch, UINT dst_slice_pitch, UINT width, UINT height, UINT depth)
{
    unsigned int x, y, z;
    unsigned char r_in, g_in, l_in;
    const unsigned short *texel_in;
    unsigned short *texel_out;





    for (z = 0; z < depth; z++)
    {
        for (y = 0; y < height; y++)
        {
            texel_out = (unsigned short *) (dst + z * dst_slice_pitch + y * dst_row_pitch);
            texel_in = (const unsigned short *)(src + z * src_slice_pitch + y * src_row_pitch);
            for (x = 0; x < width; x++ )
            {
                l_in = (*texel_in & 0xfc00u) >> 10;
                g_in = (*texel_in & 0x03e0u) >> 5;
                r_in = *texel_in & 0x001fu;

                *texel_out = ((r_in + 16) << 11) | (l_in << 5) | (g_in + 16);
                texel_out++;
                texel_in++;
            }
        }
    }
}
