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
typedef  enum wined3d_tessellator_partitioning { ____Placeholder_wined3d_tessellator_partitioning } wined3d_tessellator_partitioning ;

/* Variables and functions */
#define  WINED3D_TESSELLATOR_PARTITIONING_FRACTIONAL_EVEN 131 
#define  WINED3D_TESSELLATOR_PARTITIONING_FRACTIONAL_ODD 130 
#define  WINED3D_TESSELLATOR_PARTITIONING_INTEGER 129 
#define  WINED3D_TESSELLATOR_PARTITIONING_POW2 128 
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct wined3d_string_buffer *buffer,
        enum wined3d_tessellator_partitioning partitioning)
{
    switch (partitioning)
    {
        case WINED3D_TESSELLATOR_PARTITIONING_INTEGER:
            FUNC0(buffer, "integer");
            break;
        case WINED3D_TESSELLATOR_PARTITIONING_POW2:
            FUNC0(buffer, "pow2");
            break;
        case WINED3D_TESSELLATOR_PARTITIONING_FRACTIONAL_ODD:
            FUNC0(buffer, "fractional_odd");
            break;
        case WINED3D_TESSELLATOR_PARTITIONING_FRACTIONAL_EVEN:
            FUNC0(buffer, "fractional_even");
            break;
        default:
            FUNC0(buffer, "unknown_tessellator_partitioning(%#x)", partitioning);
            break;
    }
}