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
struct ra_tex {int dummy; } ;
struct ra_ctx {int /*<<< orphan*/  ra; struct priv* priv; } ;
struct priv {int /*<<< orphan*/  swapchain; } ;
typedef  int /*<<< orphan*/  ID3D11Texture2D ;
typedef  int /*<<< orphan*/  ID3D11Resource ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_ID3D11Texture2D ; 
 int /*<<< orphan*/  FUNC2 (struct ra_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ra_tex* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ra_tex *FUNC5(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    ID3D11Texture2D *backbuffer = NULL;
    struct ra_tex *tex = NULL;
    HRESULT hr;

    hr = FUNC1(p->swapchain, 0, &IID_ID3D11Texture2D,
                                  (void**)&backbuffer);
    if (FUNC0(hr)) {
        FUNC2(ctx, "Couldn't get swapchain image\n");
        goto done;
    }

    tex = FUNC4(ctx->ra, (ID3D11Resource *)backbuffer);
done:
    FUNC3(backbuffer);
    return tex;
}