
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_primitive_type {int type; int patch_vertex_count; } ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;

__attribute__((used)) static void shader_dump_primitive_type(struct wined3d_string_buffer *buffer,
        const struct wined3d_shader_primitive_type *primitive_type)
{
    switch (primitive_type->type)
    {
        case 128:
            shader_addline(buffer, "undefined");
            break;
        case 134:
            shader_addline(buffer, "pointlist");
            break;
        case 139:
            shader_addline(buffer, "linelist");
            break;
        case 137:
            shader_addline(buffer, "linestrip");
            break;
        case 132:
            shader_addline(buffer, "trianglelist");
            break;
        case 130:
            shader_addline(buffer, "trianglestrip");
            break;
        case 133:
            shader_addline(buffer, "trianglefan");
            break;
        case 138:
            shader_addline(buffer, "linelist_adj");
            break;
        case 136:
            shader_addline(buffer, "linestrip_adj");
            break;
        case 131:
            shader_addline(buffer, "trianglelist_adj");
            break;
        case 129:
            shader_addline(buffer, "trianglestrip_adj");
            break;
        case 135:
            shader_addline(buffer, "patch%u", primitive_type->patch_vertex_count);
            break;
        default:
            shader_addline(buffer, "<unrecognized_primitive_type %#x>", primitive_type->type);
            break;
    }
}
