
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_shader_interpolation_mode { ____Placeholder_wined3d_shader_interpolation_mode } wined3d_shader_interpolation_mode ;


 int FIXME (char*,int) ;





__attribute__((used)) static const char *shader_glsl_interpolation_qualifiers(enum wined3d_shader_interpolation_mode mode)
{
    switch (mode)
    {
        case 131:
            return "flat";
        case 129:
            return "noperspective";
        default:
            FIXME("Unhandled interpolation mode %#x.\n", mode);
        case 128:
        case 130:
            return "";
    }
}
