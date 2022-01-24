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
struct wined3d_caps_gl_ctx {int /*<<< orphan*/ * restore_gl_ctx; int /*<<< orphan*/ * restore_dc; int /*<<< orphan*/  wnd; int /*<<< orphan*/  dc; int /*<<< orphan*/  gl_ctx; scalar_t__ test_vbo; scalar_t__ test_program_id; struct wined3d_gl_info* gl_info; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(const struct wined3d_caps_gl_ctx *ctx)
{
    const struct wined3d_gl_info *gl_info = ctx->gl_info;

    FUNC4("Destroying caps GL context.\n");

    /* Both glDeleteProgram and glDeleteBuffers silently ignore 0 IDs but
     * this function might be called before the relevant function pointers
     * in gl_info are initialized. */
    if (ctx->test_program_id || ctx->test_vbo)
    {
        FUNC2(FUNC6(ctx->test_program_id));
        FUNC2(FUNC5(1, &ctx->test_vbo));
    }

    if (!FUNC8(NULL, NULL))
        FUNC1("Failed to disable caps GL context.\n");

    if (!FUNC7(ctx->gl_ctx))
    {
        DWORD err = FUNC3();
        FUNC1("wglDeleteContext(%p) failed, last error %#x.\n", ctx->gl_ctx, err);
    }

    FUNC9(ctx->wnd, ctx->dc);
    FUNC0(ctx->wnd);

    if (ctx->restore_gl_ctx && !FUNC8(ctx->restore_dc, ctx->restore_gl_ctx))
        FUNC1("Failed to restore previous GL context.\n");
}