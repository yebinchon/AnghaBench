
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int UINT ;
typedef unsigned char BYTE ;



__attribute__((used)) static void convert_r5g5_snorm_l6_unorm_nv(const BYTE *src, BYTE *dst, UINT src_row_pitch, UINT src_slice_pitch,
        UINT dst_row_pitch, UINT dst_slice_pitch, UINT width, UINT height, UINT depth)
{
    unsigned int x, y, z;
    unsigned char *texel_out, ds_out, dt_out, r_in, g_in, l_in;
    const unsigned short *texel_in;
    for (z = 0; z < depth; z++)
    {
        for (y = 0; y < height; y++)
        {
            texel_in = (const unsigned short *)(src + z * src_slice_pitch + y * src_row_pitch);
            texel_out = dst + z * dst_slice_pitch + y * dst_row_pitch;
            for (x = 0; x < width; x++ )
            {
                l_in = (*texel_in & 0xfc00u) >> 10;
                g_in = (*texel_in & 0x03e0u) >> 5;
                r_in = *texel_in & 0x001fu;

                ds_out = r_in << 3;
                if (!(r_in & 0x10))
                    ds_out |= r_in >> 1;

                dt_out = g_in << 3;
                if (!(g_in & 0x10))
                    dt_out |= g_in >> 1;

                texel_out[0] = ds_out;
                texel_out[1] = dt_out;
                texel_out[2] = l_in << 1 | l_in >> 5;

                texel_out += 3;
                texel_in++;
            }
        }
    }
}
