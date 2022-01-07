
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_shader_interpolation_mode { ____Placeholder_wined3d_shader_interpolation_mode } wined3d_shader_interpolation_mode ;
typedef int DWORD ;


 unsigned int WINED3D_PACKED_INTERPOLATION_BIT_COUNT ;
 int wined3d_extract_bits (int const*,unsigned int,unsigned int) ;

__attribute__((used)) static enum wined3d_shader_interpolation_mode wined3d_extract_interpolation_mode(
        const DWORD *packed_interpolation_mode, unsigned int register_idx)
{
    return wined3d_extract_bits(packed_interpolation_mode,
            register_idx * WINED3D_PACKED_INTERPOLATION_BIT_COUNT, WINED3D_PACKED_INTERPOLATION_BIT_COUNT);
}
