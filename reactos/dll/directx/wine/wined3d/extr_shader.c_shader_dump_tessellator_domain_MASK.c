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
typedef  enum wined3d_tessellator_domain { ____Placeholder_wined3d_tessellator_domain } wined3d_tessellator_domain ;

/* Variables and functions */
#define  WINED3D_TESSELLATOR_DOMAIN_LINE 130 
#define  WINED3D_TESSELLATOR_DOMAIN_QUAD 129 
#define  WINED3D_TESSELLATOR_DOMAIN_TRIANGLE 128 
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct wined3d_string_buffer *buffer,
        enum wined3d_tessellator_domain domain)
{
    switch (domain)
    {
        case WINED3D_TESSELLATOR_DOMAIN_LINE:
            FUNC0(buffer, "line");
            break;
        case WINED3D_TESSELLATOR_DOMAIN_TRIANGLE:
            FUNC0(buffer, "triangle");
            break;
        case WINED3D_TESSELLATOR_DOMAIN_QUAD:
            FUNC0(buffer, "quad");
            break;
        default:
            FUNC0(buffer, "unknown_tessellator_domain(%#x)", domain);
            break;
    }
}