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
struct wined3d_gl_info {int dummy; } ;
struct wined3d_fence {int dummy; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  WINED3DERR_NOTAVAILABLE ; 
 int /*<<< orphan*/  WINED3D_OK ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_gl_info const*) ; 

__attribute__((used)) static HRESULT FUNC2(struct wined3d_fence *fence, const struct wined3d_gl_info *gl_info)
{
    if (!FUNC1(gl_info))
    {
        FUNC0("Fences not supported.\n");
        return WINED3DERR_NOTAVAILABLE;
    }

    return WINED3D_OK;
}