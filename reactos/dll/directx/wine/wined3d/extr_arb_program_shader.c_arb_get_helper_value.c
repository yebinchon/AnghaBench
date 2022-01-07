
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_shader_type { ____Placeholder_wined3d_shader_type } wined3d_shader_type ;
typedef enum arb_helper_value { ____Placeholder_arb_helper_value } arb_helper_value ;
 int ERR (char*,int ) ;
 int FIXME (char*,char*,int) ;
 int WINED3D_SHADER_TYPE_PIXEL ;
 int WINED3D_SHADER_TYPE_VERTEX ;
 int debug_shader_type (int) ;

__attribute__((used)) static const char *arb_get_helper_value(enum wined3d_shader_type shader, enum arb_helper_value value)
{
    if (shader != WINED3D_SHADER_TYPE_VERTEX && shader != WINED3D_SHADER_TYPE_PIXEL)
    {
        ERR("Unsupported shader type '%s'.\n", debug_shader_type(shader));
        return "bad";
    }

    if (shader == WINED3D_SHADER_TYPE_PIXEL)
    {
        switch (value)
        {
            case 128: return "ps_helper_const.x";
            case 131: return "ps_helper_const.y";
            case 130: return "coefmul.x";
            case 133: return "ps_helper_const.xxxy";
            case 132: return "ps_helper_const.z";
            default: break;
        }
    }
    else
    {
        switch (value)
        {
            case 128: return "helper_const.x";
            case 131: return "helper_const.y";
            case 130: return "helper_const.z";
            case 132: return "helper_const.w";
            case 133: return "helper_const.xxxy";
            case 129: return "rel_addr_const.y";
        }
    }
    FIXME("Unmanaged %s shader helper constant requested: %u.\n",
          shader == WINED3D_SHADER_TYPE_PIXEL ? "pixel" : "vertex", value);
    switch (value)
    {
        case 128: return "0.0";
        case 131: return "1.0";
        case 130: return "2.0";
        case 133: return "{0.0, 0.0, 0.0, 1.0}";
        case 132: return "1e-8";
        default: return "bad";
    }
}
