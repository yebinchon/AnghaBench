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
struct wined3d_surface {int dummy; } ;
struct wined3d_context {int dummy; } ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,struct wined3d_surface*,int /*<<< orphan*/ ) ; 
#define  WINED3D_LOCATION_BUFFER 135 
#define  WINED3D_LOCATION_DRAWABLE 134 
#define  WINED3D_LOCATION_RB_MULTISAMPLE 133 
#define  WINED3D_LOCATION_RB_RESOLVED 132 
#define  WINED3D_LOCATION_SYSMEM 131 
#define  WINED3D_LOCATION_TEXTURE_RGB 130 
#define  WINED3D_LOCATION_TEXTURE_SRGB 129 
#define  WINED3D_LOCATION_USER_MEMORY 128 
 int /*<<< orphan*/  FUNC2 (struct wined3d_surface*,struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_surface*,struct wined3d_context*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_surface*,struct wined3d_context*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_surface*,struct wined3d_context*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

BOOL FUNC7(struct wined3d_surface *surface, struct wined3d_context *context, DWORD location)
{
    FUNC1("surface %p, location %s.\n", surface, FUNC6(location));

    switch (location)
    {
        case WINED3D_LOCATION_USER_MEMORY:
        case WINED3D_LOCATION_SYSMEM:
        case WINED3D_LOCATION_BUFFER:
            return FUNC4(surface, context, location);

        case WINED3D_LOCATION_DRAWABLE:
            return FUNC2(surface, context);

        case WINED3D_LOCATION_RB_RESOLVED:
        case WINED3D_LOCATION_RB_MULTISAMPLE:
            return FUNC3(surface, context, location);

        case WINED3D_LOCATION_TEXTURE_RGB:
        case WINED3D_LOCATION_TEXTURE_SRGB:
            return FUNC5(surface, context,
                    location == WINED3D_LOCATION_TEXTURE_SRGB);

        default:
            FUNC0("Don't know how to handle location %#x.\n", location);
            return FALSE;
    }
}