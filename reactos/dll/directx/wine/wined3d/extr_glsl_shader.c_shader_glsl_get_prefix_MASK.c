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
typedef  enum wined3d_shader_type { ____Placeholder_wined3d_shader_type } wined3d_shader_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  WINED3D_SHADER_TYPE_COMPUTE 133 
#define  WINED3D_SHADER_TYPE_DOMAIN 132 
#define  WINED3D_SHADER_TYPE_GEOMETRY 131 
#define  WINED3D_SHADER_TYPE_HULL 130 
#define  WINED3D_SHADER_TYPE_PIXEL 129 
#define  WINED3D_SHADER_TYPE_VERTEX 128 

__attribute__((used)) static const char *FUNC1(enum wined3d_shader_type type)
{
    switch (type)
    {
        case WINED3D_SHADER_TYPE_VERTEX:
            return "vs";

        case WINED3D_SHADER_TYPE_HULL:
            return "hs";

        case WINED3D_SHADER_TYPE_DOMAIN:
            return "ds";

        case WINED3D_SHADER_TYPE_GEOMETRY:
            return "gs";

        case WINED3D_SHADER_TYPE_PIXEL:
            return "ps";

        case WINED3D_SHADER_TYPE_COMPUTE:
            return "cs";

        default:
            FUNC0("Unhandled shader type %#x.\n", type);
            return "unknown";
    }
}