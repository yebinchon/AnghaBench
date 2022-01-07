
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_signature_element {unsigned int register_idx; scalar_t__ sysval_semantic; int component_type; } ;
struct wined3d_gl_info {int dummy; } ;


 int FIXME (char*,int) ;
 scalar_t__ WINED3D_SV_INSTANCE_ID ;
 scalar_t__ WINED3D_SV_POSITION ;
 scalar_t__ WINED3D_SV_VERTEX_ID ;




 int get_attribute_keyword (struct wined3d_gl_info const*) ;
 int shader_addline (struct wined3d_string_buffer*,char*,unsigned int,...) ;
 int shader_glsl_declare_typed_vertex_attribute (struct wined3d_string_buffer*,struct wined3d_gl_info const*,char*,char*,unsigned int) ;
 scalar_t__ shader_glsl_use_explicit_attrib_location (struct wined3d_gl_info const*) ;

__attribute__((used)) static void shader_glsl_declare_generic_vertex_attribute(struct wined3d_string_buffer *buffer,
        const struct wined3d_gl_info *gl_info, const struct wined3d_shader_signature_element *e)
{
    unsigned int index = e->register_idx;

    if (e->sysval_semantic == WINED3D_SV_VERTEX_ID)
    {
        shader_addline(buffer, "vec4 vs_in%u = vec4(intBitsToFloat(gl_VertexID), 0.0, 0.0, 0.0);\n",
                index);
        return;
    }
    if (e->sysval_semantic == WINED3D_SV_INSTANCE_ID)
    {
        shader_addline(buffer, "vec4 vs_in%u = vec4(intBitsToFloat(gl_InstanceID), 0.0, 0.0, 0.0);\n",
                index);
        return;
    }
    if (e->sysval_semantic && e->sysval_semantic != WINED3D_SV_POSITION)
        FIXME("Unhandled sysval semantic %#x.\n", e->sysval_semantic);

    if (shader_glsl_use_explicit_attrib_location(gl_info))
        shader_addline(buffer, "layout(location = %u) ", index);

    switch (e->component_type)
    {
        case 129:
            shader_glsl_declare_typed_vertex_attribute(buffer, gl_info, "uvec", "uint", index);
            break;
        case 130:
            shader_glsl_declare_typed_vertex_attribute(buffer, gl_info, "ivec", "int", index);
            break;

        default:
            FIXME("Unhandled type %#x.\n", e->component_type);

        case 128:
        case 131:
            shader_addline(buffer, "%s vec4 vs_in%u;\n", get_attribute_keyword(gl_info), index);
            break;
    }
}
