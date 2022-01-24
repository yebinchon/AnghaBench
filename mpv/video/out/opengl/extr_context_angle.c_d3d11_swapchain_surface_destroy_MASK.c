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
struct ra_ctx {struct priv* priv; } ;
struct priv {int dxgi_swapchain; scalar_t__ d3d11_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ra_ctx*) ; 

__attribute__((used)) static void FUNC3(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    bool had_swapchain = p->dxgi_swapchain;
    FUNC1(p->dxgi_swapchain);
    FUNC2(ctx);

    // Ensure the swapchain is destroyed by flushing the D3D11 immediate
    // context. This is needed because the HWND may be reused. See:
    // https://msdn.microsoft.com/en-us/library/windows/desktop/ff476425.aspx
    if (had_swapchain && p->d3d11_context)
        FUNC0(p->d3d11_context);
}