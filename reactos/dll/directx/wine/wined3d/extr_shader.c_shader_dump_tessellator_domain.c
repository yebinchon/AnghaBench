
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
typedef enum wined3d_tessellator_domain { ____Placeholder_wined3d_tessellator_domain } wined3d_tessellator_domain ;





 int shader_addline (struct wined3d_string_buffer*,char*,...) ;

__attribute__((used)) static void shader_dump_tessellator_domain(struct wined3d_string_buffer *buffer,
        enum wined3d_tessellator_domain domain)
{
    switch (domain)
    {
        case 130:
            shader_addline(buffer, "line");
            break;
        case 128:
            shader_addline(buffer, "triangle");
            break;
        case 129:
            shader_addline(buffer, "quad");
            break;
        default:
            shader_addline(buffer, "unknown_tessellator_domain(%#x)", domain);
            break;
    }
}
