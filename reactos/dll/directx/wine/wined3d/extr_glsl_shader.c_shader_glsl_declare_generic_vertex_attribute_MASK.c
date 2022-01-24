#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_signature_element {unsigned int register_idx; scalar_t__ sysval_semantic; int component_type; } ;
struct wined3d_gl_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ WINED3D_SV_INSTANCE_ID ; 
 scalar_t__ WINED3D_SV_POSITION ; 
 scalar_t__ WINED3D_SV_VERTEX_ID ; 
#define  WINED3D_TYPE_FLOAT 131 
#define  WINED3D_TYPE_INT 130 
#define  WINED3D_TYPE_UINT 129 
#define  WINED3D_TYPE_UNKNOWN 128 
 int /*<<< orphan*/  FUNC1 (struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_string_buffer*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_string_buffer*,struct wined3d_gl_info const*,char*,char*,unsigned int) ; 
 scalar_t__ FUNC4 (struct wined3d_gl_info const*) ; 

__attribute__((used)) static void FUNC5(struct wined3d_string_buffer *buffer,
        const struct wined3d_gl_info *gl_info, const struct wined3d_shader_signature_element *e)
{
    unsigned int index = e->register_idx;

    if (e->sysval_semantic == WINED3D_SV_VERTEX_ID)
    {
        FUNC2(buffer, "vec4 vs_in%u = vec4(intBitsToFloat(gl_VertexID), 0.0, 0.0, 0.0);\n",
                index);
        return;
    }
    if (e->sysval_semantic == WINED3D_SV_INSTANCE_ID)
    {
        FUNC2(buffer, "vec4 vs_in%u = vec4(intBitsToFloat(gl_InstanceID), 0.0, 0.0, 0.0);\n",
                index);
        return;
    }
    if (e->sysval_semantic && e->sysval_semantic != WINED3D_SV_POSITION)
        FUNC0("Unhandled sysval semantic %#x.\n", e->sysval_semantic);

    if (FUNC4(gl_info))
        FUNC2(buffer, "layout(location = %u) ", index);

    switch (e->component_type)
    {
        case WINED3D_TYPE_UINT:
            FUNC3(buffer, gl_info, "uvec", "uint", index);
            break;
        case WINED3D_TYPE_INT:
            FUNC3(buffer, gl_info, "ivec", "int", index);
            break;

        default:
            FUNC0("Unhandled type %#x.\n", e->component_type);
            /* Fall through. */
        case WINED3D_TYPE_UNKNOWN:
        case WINED3D_TYPE_FLOAT:
            FUNC2(buffer, "%s vec4 vs_in%u;\n", FUNC1(gl_info), index);
            break;
    }
}