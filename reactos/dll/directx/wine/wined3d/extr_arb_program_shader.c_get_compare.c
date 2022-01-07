
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_shader_rel_op { ____Placeholder_wined3d_shader_rel_op } wined3d_shader_rel_op ;


 int FIXME (char*,int) ;







__attribute__((used)) static const char *get_compare(enum wined3d_shader_rel_op op)
{
    switch (op)
    {
        case 131: return "GT";
        case 133: return "EQ";
        case 132: return "GE";
        case 129: return "LT";
        case 128: return "NE";
        case 130: return "LE";
        default:
            FIXME("Unrecognized operator %#x.\n", op);
            return "(\?\?)";
    }
}
