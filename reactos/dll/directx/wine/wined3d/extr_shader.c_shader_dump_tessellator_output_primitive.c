
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
typedef enum wined3d_tessellator_output_primitive { ____Placeholder_wined3d_tessellator_output_primitive } wined3d_tessellator_output_primitive ;






 int shader_addline (struct wined3d_string_buffer*,char*,...) ;

__attribute__((used)) static void shader_dump_tessellator_output_primitive(struct wined3d_string_buffer *buffer,
        enum wined3d_tessellator_output_primitive output_primitive)
{
    switch (output_primitive)
    {
        case 130:
            shader_addline(buffer, "point");
            break;
        case 131:
            shader_addline(buffer, "line");
            break;
        case 128:
            shader_addline(buffer, "triangle_cw");
            break;
        case 129:
            shader_addline(buffer, "triangle_ccw");
            break;
        default:
            shader_addline(buffer, "unknown_tessellator_output_primitive(%#x)", output_primitive);
            break;
    }
}
