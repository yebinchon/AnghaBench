
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
typedef enum wined3d_shader_interpolation_mode { ____Placeholder_wined3d_shader_interpolation_mode } wined3d_shader_interpolation_mode ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;

__attribute__((used)) static void shader_dump_interpolation_mode(struct wined3d_string_buffer *buffer,
        enum wined3d_shader_interpolation_mode interpolation_mode)
{
    switch (interpolation_mode)
    {
        case 134:
            shader_addline(buffer, "constant");
            break;
        case 133:
            shader_addline(buffer, "linear");
            break;
        case 132:
            shader_addline(buffer, "linear centroid");
            break;
        case 131:
            shader_addline(buffer, "linear noperspective");
            break;
        case 128:
            shader_addline(buffer, "linear sample");
            break;
        case 130:
            shader_addline(buffer, "linear noperspective centroid");
            break;
        case 129:
            shader_addline(buffer, "linear noperspective sample");
            break;
        default:
            shader_addline(buffer, "<unrecognized_interpolation_mode %#x>", interpolation_mode);
            break;
    }
}
