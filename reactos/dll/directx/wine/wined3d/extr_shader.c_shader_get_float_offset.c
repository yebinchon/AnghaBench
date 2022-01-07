
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_shader_register_type { ____Placeholder_wined3d_shader_register_type } wined3d_shader_register_type ;
typedef unsigned int UINT ;


 int FIXME (char*,int) ;





__attribute__((used)) static unsigned int shader_get_float_offset(enum wined3d_shader_register_type register_type, UINT register_idx)
{
    switch (register_type)
    {
        case 131: return register_idx;
        case 130: return 2048 + register_idx;
        case 129: return 4096 + register_idx;
        case 128: return 6144 + register_idx;
        default:
            FIXME("Unsupported register type: %u.\n", register_type);
            return register_idx;
    }
}
