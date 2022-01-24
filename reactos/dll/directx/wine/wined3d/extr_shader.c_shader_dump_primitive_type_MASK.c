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
struct wined3d_shader_primitive_type {int type; int patch_vertex_count; } ;

/* Variables and functions */
#define  WINED3D_PT_LINELIST 139 
#define  WINED3D_PT_LINELIST_ADJ 138 
#define  WINED3D_PT_LINESTRIP 137 
#define  WINED3D_PT_LINESTRIP_ADJ 136 
#define  WINED3D_PT_PATCH 135 
#define  WINED3D_PT_POINTLIST 134 
#define  WINED3D_PT_TRIANGLEFAN 133 
#define  WINED3D_PT_TRIANGLELIST 132 
#define  WINED3D_PT_TRIANGLELIST_ADJ 131 
#define  WINED3D_PT_TRIANGLESTRIP 130 
#define  WINED3D_PT_TRIANGLESTRIP_ADJ 129 
#define  WINED3D_PT_UNDEFINED 128 
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct wined3d_string_buffer *buffer,
        const struct wined3d_shader_primitive_type *primitive_type)
{
    switch (primitive_type->type)
    {
        case WINED3D_PT_UNDEFINED:
            FUNC0(buffer, "undefined");
            break;
        case WINED3D_PT_POINTLIST:
            FUNC0(buffer, "pointlist");
            break;
        case WINED3D_PT_LINELIST:
            FUNC0(buffer, "linelist");
            break;
        case WINED3D_PT_LINESTRIP:
            FUNC0(buffer, "linestrip");
            break;
        case WINED3D_PT_TRIANGLELIST:
            FUNC0(buffer, "trianglelist");
            break;
        case WINED3D_PT_TRIANGLESTRIP:
            FUNC0(buffer, "trianglestrip");
            break;
        case WINED3D_PT_TRIANGLEFAN:
            FUNC0(buffer, "trianglefan");
            break;
        case WINED3D_PT_LINELIST_ADJ:
            FUNC0(buffer, "linelist_adj");
            break;
        case WINED3D_PT_LINESTRIP_ADJ:
            FUNC0(buffer, "linestrip_adj");
            break;
        case WINED3D_PT_TRIANGLELIST_ADJ:
            FUNC0(buffer, "trianglelist_adj");
            break;
        case WINED3D_PT_TRIANGLESTRIP_ADJ:
            FUNC0(buffer, "trianglestrip_adj");
            break;
        case WINED3D_PT_PATCH:
            FUNC0(buffer, "patch%u", primitive_type->patch_vertex_count);
            break;
        default:
            FUNC0(buffer, "<unrecognized_primitive_type %#x>", primitive_type->type);
            break;
    }
}