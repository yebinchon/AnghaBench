
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_shader_interpolation_mode { ____Placeholder_wined3d_shader_interpolation_mode } wined3d_shader_interpolation_mode ;
typedef int DWORD ;


 int FIXME (char*,int) ;
 int WINED3DSIM_LINEAR_NOPERSPECTIVE_SAMPLE ;
 unsigned int WINED3D_PACKED_INTERPOLATION_BIT_COUNT ;
 int wined3d_insert_bits (int *,unsigned int,unsigned int,int) ;

__attribute__((used)) static void wined3d_insert_interpolation_mode(DWORD *packed_interpolation_mode,
        unsigned int register_idx, enum wined3d_shader_interpolation_mode mode)
{
    if (mode > WINED3DSIM_LINEAR_NOPERSPECTIVE_SAMPLE)
        FIXME("Unexpected interpolation mode %#x.\n", mode);

    wined3d_insert_bits(packed_interpolation_mode,
            register_idx * WINED3D_PACKED_INTERPOLATION_BIT_COUNT, WINED3D_PACKED_INTERPOLATION_BIT_COUNT, mode);
}
