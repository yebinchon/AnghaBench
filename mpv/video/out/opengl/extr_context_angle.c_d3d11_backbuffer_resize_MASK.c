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
struct vo {int dummy; } ;
struct ra_ctx {struct vo* vo; struct priv* priv; } ;
struct priv {int sc_width; int sc_height; int /*<<< orphan*/  dxgi_swapchain; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DXGI_FORMAT_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ra_ctx*) ; 

__attribute__((used)) static void FUNC7(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct vo *vo = ctx->vo;
    HRESULT hr;

    int old_sc_width = p->sc_width;
    int old_sc_height = p->sc_height;

    FUNC6(ctx);
    // Avoid unnecessary resizing
    if (old_sc_width == p->sc_width && old_sc_height == p->sc_height)
        return;

    // All references to backbuffers must be released before ResizeBuffers
    // (including references held by ANGLE)
    FUNC4(ctx);

    // The DirectX runtime may report errors related to the device like
    // DXGI_ERROR_DEVICE_REMOVED at this point
    hr = FUNC1(p->dxgi_swapchain, 0, p->sc_width,
        p->sc_height, DXGI_FORMAT_UNKNOWN, 0);
    if (FUNC0(hr))
        FUNC2(vo, "Couldn't resize swapchain: %s\n", FUNC5(hr));

    if (!FUNC3(ctx))
        FUNC2(vo, "Couldn't get back buffer after resize\n");
}