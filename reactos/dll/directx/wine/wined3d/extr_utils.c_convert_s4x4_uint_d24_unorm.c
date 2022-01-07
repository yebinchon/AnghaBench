
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int UINT ;
typedef int DWORD ;
typedef int BYTE ;



__attribute__((used)) static void convert_s4x4_uint_d24_unorm(const BYTE *src, BYTE *dst, UINT src_row_pitch, UINT src_slice_pitch,
        UINT dst_row_pitch, UINT dst_slice_pitch, UINT width, UINT height, UINT depth)
{
    unsigned int x, y, z;

    for (z = 0; z < depth; z++)
    {
        for (y = 0; y < height; ++y)
        {
            const DWORD *source = (const DWORD *)(src + z * src_slice_pitch + y * src_row_pitch);
            DWORD *dest = (DWORD *)(dst + z * dst_slice_pitch + y * dst_row_pitch);

            for (x = 0; x < width; ++x)
            {

                dest[x] = source[x] & ~0xf0;
            }
        }
    }
}
