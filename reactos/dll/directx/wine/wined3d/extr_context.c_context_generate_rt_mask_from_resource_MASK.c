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
struct wined3d_resource {scalar_t__ type; } ;
typedef  unsigned int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ WINED3D_RTYPE_TEXTURE_2D ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_resource*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline DWORD FUNC4(struct wined3d_resource *resource)
{
    if (resource->type != WINED3D_RTYPE_TEXTURE_2D)
    {
        FUNC0("Not implemented for %s resources.\n", FUNC1(resource->type));
        return 0;
    }

    return (1u << 31) | FUNC3(FUNC2(resource));
}