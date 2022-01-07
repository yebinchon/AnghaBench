
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_limits {unsigned int* uniform_blocks; } ;
typedef enum wined3d_shader_type { ____Placeholder_wined3d_shader_type } wined3d_shader_type ;


 int ERR (char*,int) ;
 unsigned int WINED3D_SHADER_TYPE_COUNT ;

void wined3d_gl_limits_get_uniform_block_range(const struct wined3d_gl_limits *gl_limits,
        enum wined3d_shader_type shader_type, unsigned int *base, unsigned int *count)
{
    unsigned int i;

    *base = 0;
    for (i = 0; i < WINED3D_SHADER_TYPE_COUNT; ++i)
    {
        *count = gl_limits->uniform_blocks[i];
        if (i == shader_type)
            return;
        *base += *count;
    }

    ERR("Unrecognized shader type %#x.\n", shader_type);
    *count = 0;
}
