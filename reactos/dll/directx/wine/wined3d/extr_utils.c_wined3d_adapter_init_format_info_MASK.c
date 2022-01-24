#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wined3d_gl_info {int /*<<< orphan*/ * formats; } ;
struct wined3d_caps_gl_ctx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vendor; } ;
struct wined3d_adapter {int /*<<< orphan*/  d3d_info; TYPE_1__ driver_info; struct wined3d_gl_info gl_info; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct wined3d_adapter*,struct wined3d_gl_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_gl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_gl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_caps_gl_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_caps_gl_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_gl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_gl_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_adapter*,struct wined3d_gl_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_gl_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct wined3d_gl_info*) ; 

BOOL FUNC11(struct wined3d_adapter *adapter, struct wined3d_caps_gl_ctx *ctx)
{
    struct wined3d_gl_info *gl_info = &adapter->gl_info;

    if (!FUNC2(gl_info)) return FALSE;
    if (!FUNC3(gl_info)) goto fail;

    if (!ctx) /* WINED3D_NO3D */
        return TRUE;

    if (!FUNC8(adapter, gl_info)) goto fail;
    if (!FUNC9(gl_info)) goto fail;

    FUNC0(adapter, gl_info);
    FUNC5(ctx);
    FUNC6(gl_info, adapter->driver_info.vendor);
    if (!FUNC10(gl_info)) goto fail;
    FUNC7(gl_info);
    FUNC4(ctx, &adapter->d3d_info);

    return TRUE;

fail:
    FUNC1(gl_info->formats);
    gl_info->formats = NULL;
    return FALSE;
}