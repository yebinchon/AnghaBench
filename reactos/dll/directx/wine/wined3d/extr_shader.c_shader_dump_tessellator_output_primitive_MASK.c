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
typedef  enum wined3d_tessellator_output_primitive { ____Placeholder_wined3d_tessellator_output_primitive } wined3d_tessellator_output_primitive ;

/* Variables and functions */
#define  WINED3D_TESSELLATOR_OUTPUT_LINE 131 
#define  WINED3D_TESSELLATOR_OUTPUT_POINT 130 
#define  WINED3D_TESSELLATOR_OUTPUT_TRIANGLE_CCW 129 
#define  WINED3D_TESSELLATOR_OUTPUT_TRIANGLE_CW 128 
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct wined3d_string_buffer *buffer,
        enum wined3d_tessellator_output_primitive output_primitive)
{
    switch (output_primitive)
    {
        case WINED3D_TESSELLATOR_OUTPUT_POINT:
            FUNC0(buffer, "point");
            break;
        case WINED3D_TESSELLATOR_OUTPUT_LINE:
            FUNC0(buffer, "line");
            break;
        case WINED3D_TESSELLATOR_OUTPUT_TRIANGLE_CW:
            FUNC0(buffer, "triangle_cw");
            break;
        case WINED3D_TESSELLATOR_OUTPUT_TRIANGLE_CCW:
            FUNC0(buffer, "triangle_ccw");
            break;
        default:
            FUNC0(buffer, "unknown_tessellator_output_primitive(%#x)", output_primitive);
            break;
    }
}