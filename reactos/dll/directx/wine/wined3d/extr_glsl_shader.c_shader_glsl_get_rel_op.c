
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_shader_rel_op { ____Placeholder_wined3d_shader_rel_op } wined3d_shader_rel_op ;


 int FIXME (char*,int) ;







__attribute__((used)) static const char *shader_glsl_get_rel_op(enum wined3d_shader_rel_op op)
{
    switch (op)
    {
        case 131: return ">";
        case 133: return "==";
        case 132: return ">=";
        case 129: return "<";
        case 128: return "!=";
        case 130: return "<=";
        default:
            FIXME("Unrecognized operator %#x.\n", op);
            return "(\?\?)";
    }
}
