
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
typedef enum wined3d_data_type { ____Placeholder_wined3d_data_type } wined3d_data_type ;


 int FIXME (char*,int,int) ;
 int WINED3D_DATA_FLOAT ;




 int string_buffer_sprintf (struct wined3d_string_buffer*,char*,char const*) ;

__attribute__((used)) static void shader_glsl_sprintf_cast(struct wined3d_string_buffer *dst_param, const char *src_param,
        enum wined3d_data_type dst_data_type, enum wined3d_data_type src_data_type)
{
    if (dst_data_type == src_data_type)
    {
        string_buffer_sprintf(dst_param, "%s", src_param);
        return;
    }

    if (src_data_type == WINED3D_DATA_FLOAT)
    {
        switch (dst_data_type)
        {
            case 131:
                string_buffer_sprintf(dst_param, "floatBitsToInt(%s)", src_param);
                return;
            case 130:
            case 129:
            case 128:
                string_buffer_sprintf(dst_param, "floatBitsToUint(%s)", src_param);
                return;
            default:
                break;
        }
    }

    if (src_data_type == 128 && dst_data_type == WINED3D_DATA_FLOAT)
    {
        string_buffer_sprintf(dst_param, "uintBitsToFloat(%s)", src_param);
        return;
    }

    if (src_data_type == 131 && dst_data_type == WINED3D_DATA_FLOAT)
    {
        string_buffer_sprintf(dst_param, "intBitsToFloat(%s)", src_param);
        return;
    }

    FIXME("Unhandled cast from %#x to %#x.\n", src_data_type, dst_data_type);
    string_buffer_sprintf(dst_param, "%s", src_param);
}
