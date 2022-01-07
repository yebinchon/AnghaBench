
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef unsigned int UINT ;
typedef int DWORD ;
typedef int BYTE ;



__attribute__((used)) static void convert_s1_uint_d15_unorm(const BYTE *src, BYTE *dst, UINT src_row_pitch, UINT src_slice_pitch,
        UINT dst_row_pitch, UINT dst_slice_pitch, UINT width, UINT height, UINT depth)
{
    unsigned int x, y, z;

    for (z = 0; z < depth; z++)
    {
        for (y = 0; y < height; ++y)
        {
            const WORD *source = (const WORD *)(src + z * src_slice_pitch + y * src_row_pitch);
            DWORD *dest = (DWORD *)(dst + z * dst_slice_pitch + y * dst_row_pitch);

            for (x = 0; x < width; ++x)
            {



                WORD d15 = source[x] >> 1;
                DWORD d24 = (d15 << 9) + (d15 >> 6);
                dest[x] = (d24 << 8) | (source[x] & 0x1);
            }
        }
    }
}
