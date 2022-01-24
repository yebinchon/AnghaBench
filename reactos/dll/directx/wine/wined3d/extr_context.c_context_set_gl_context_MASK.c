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
struct wined3d_swapchain {int dummy; } ;
struct wined3d_context {int valid; scalar_t__ needs_set; int /*<<< orphan*/  hdc; int /*<<< orphan*/  glCtx; int /*<<< orphan*/  pixel_format; void* hdc_has_format; void* hdc_is_private; scalar_t__ destroyed; struct wined3d_swapchain* swapchain; } ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_swapchain*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC8(struct wined3d_context *ctx)
{
    struct wined3d_swapchain *swapchain = ctx->swapchain;
    BOOL backup = FALSE;

    if (!FUNC5(ctx))
    {
        FUNC3("Failed to set pixel format %d on device context %p.\n",
                ctx->pixel_format, ctx->hdc);
        backup = TRUE;
    }

    if (backup || !FUNC7(ctx->hdc, ctx->glCtx))
    {
        FUNC3("Failed to make GL context %p current on device context %p, last error %#x.\n",
                ctx->glCtx, ctx->hdc, FUNC2());
        ctx->valid = 0;
        FUNC3("Trying fallback to the backup window.\n");

        /* FIXME: If the context is destroyed it's no longer associated with
         * a swapchain, so we can't use the swapchain to get a backup dc. To
         * make this work windowless contexts would need to be handled by the
         * device. */
        if (ctx->destroyed || !swapchain)
        {
            FUNC1("Unable to get backup dc for destroyed context %p.\n", ctx);
            FUNC4(NULL);
            return FALSE;
        }

        if (!(ctx->hdc = FUNC6(swapchain)))
        {
            FUNC4(NULL);
            return FALSE;
        }

        ctx->hdc_is_private = TRUE;
        ctx->hdc_has_format = FALSE;

        if (!FUNC5(ctx))
        {
            FUNC0("Failed to set pixel format %d on device context %p.\n",
                    ctx->pixel_format, ctx->hdc);
            FUNC4(NULL);
            return FALSE;
        }

        if (!FUNC7(ctx->hdc, ctx->glCtx))
        {
            FUNC0("Fallback to backup window (dc %p) failed too, last error %#x.\n",
                    ctx->hdc, FUNC2());
            FUNC4(NULL);
            return FALSE;
        }

        ctx->valid = 1;
    }
    ctx->needs_set = 0;
    return TRUE;
}