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
struct wined3d_gl_info {int /*<<< orphan*/ * p_wglCreateContextAttribsARB; } ;
struct wined3d_caps_gl_ctx {int /*<<< orphan*/  gl_ctx; int /*<<< orphan*/  dc; } ;
typedef  int /*<<< orphan*/  HGLRC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_gl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC6(struct wined3d_caps_gl_ctx *caps_gl_ctx,
        struct wined3d_gl_info *gl_info)
{
    HGLRC new_ctx;

    if (!(gl_info->p_wglCreateContextAttribsARB = (void *)FUNC4("wglCreateContextAttribsARB")))
        return TRUE;

    if (!(new_ctx = FUNC2(gl_info, caps_gl_ctx->dc, NULL)))
    {
        gl_info->p_wglCreateContextAttribsARB = NULL;
        return FALSE;
    }

    if (!FUNC5(caps_gl_ctx->dc, new_ctx))
    {
        FUNC0("Failed to make new context current, last error %#x.\n", FUNC1());
        if (!FUNC3(new_ctx))
            FUNC0("Failed to delete new context, last error %#x.\n", FUNC1());
        gl_info->p_wglCreateContextAttribsARB = NULL;
        return TRUE;
    }

    if (!FUNC3(caps_gl_ctx->gl_ctx))
        FUNC0("Failed to delete old context, last error %#x.\n", FUNC1());
    caps_gl_ctx->gl_ctx = new_ctx;

    return TRUE;
}