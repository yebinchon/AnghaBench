
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_shader_rel_op { ____Placeholder_wined3d_shader_rel_op } wined3d_shader_rel_op ;


 int FIXME (char*,int) ;







__attribute__((used)) static enum wined3d_shader_rel_op invert_compare(enum wined3d_shader_rel_op op)
{
    switch (op)
    {
        case 131: return 130;
        case 133: return 128;
        case 132: return 129;
        case 129: return 132;
        case 128: return 133;
        case 130: return 131;
        default:
            FIXME("Unrecognized operator %#x.\n", op);
            return -1;
    }
}
