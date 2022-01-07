
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_shader_type { ____Placeholder_wined3d_shader_type } wined3d_shader_type ;


 int FIXME (char*,int) ;







__attribute__((used)) static const char *shader_glsl_get_prefix(enum wined3d_shader_type type)
{
    switch (type)
    {
        case 128:
            return "vs";

        case 130:
            return "hs";

        case 132:
            return "ds";

        case 131:
            return "gs";

        case 129:
            return "ps";

        case 133:
            return "cs";

        default:
            FIXME("Unhandled shader type %#x.\n", type);
            return "unknown";
    }
}
