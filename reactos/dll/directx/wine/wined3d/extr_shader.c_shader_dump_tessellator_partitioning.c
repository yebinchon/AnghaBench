
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
typedef enum wined3d_tessellator_partitioning { ____Placeholder_wined3d_tessellator_partitioning } wined3d_tessellator_partitioning ;






 int shader_addline (struct wined3d_string_buffer*,char*,...) ;

__attribute__((used)) static void shader_dump_tessellator_partitioning(struct wined3d_string_buffer *buffer,
        enum wined3d_tessellator_partitioning partitioning)
{
    switch (partitioning)
    {
        case 129:
            shader_addline(buffer, "integer");
            break;
        case 128:
            shader_addline(buffer, "pow2");
            break;
        case 130:
            shader_addline(buffer, "fractional_odd");
            break;
        case 131:
            shader_addline(buffer, "fractional_even");
            break;
        default:
            shader_addline(buffer, "unknown_tessellator_partitioning(%#x)", partitioning);
            break;
    }
}
