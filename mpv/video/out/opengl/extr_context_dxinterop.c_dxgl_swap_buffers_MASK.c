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
struct ra_ctx {int /*<<< orphan*/  vo; struct priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* DXLockObjectsNV ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* DXUnlockObjectsNV ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;} ;
struct priv {int lost_device; int /*<<< orphan*/  rtarget_h; int /*<<< orphan*/  device_h; int /*<<< orphan*/  device; int /*<<< orphan*/  backbuffer; int /*<<< orphan*/  rtarget; TYPE_1__ gl; } ;
typedef  int HRESULT ;
typedef  TYPE_1__ GL ;

/* Variables and functions */
#define  D3DERR_DEVICEHUNG 129 
#define  D3DERR_DEVICELOST 128 
 int /*<<< orphan*/  D3DTEXF_NONE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    GL *gl = &p->gl;
    HRESULT hr;

    FUNC8();

    // If the device is still lost, try to reset it again
    if (p->lost_device)
        FUNC5(ctx);
    if (p->lost_device)
        return;

    if (!gl->DXUnlockObjectsNV(p->device_h, 1, &p->rtarget_h)) {
        FUNC3(ctx->vo, "Couldn't unlock rendertarget for present: %s\n",
               FUNC7());
        return;
    }

    // Blit the OpenGL rendertarget to the backbuffer
    hr = FUNC2(p->device, p->rtarget, NULL,
                                        p->backbuffer, NULL, D3DTEXF_NONE);
    if (FUNC0(hr)) {
        FUNC3(ctx->vo, "Couldn't stretchrect for present: %s\n",
               FUNC6(hr));
        return;
    }

    hr = FUNC1(p->device, NULL, NULL, NULL, NULL, 0);
    switch (hr) {
    case D3DERR_DEVICELOST:
    case D3DERR_DEVICEHUNG:
        FUNC4(ctx->vo, "Direct3D device lost! Resetting.\n");
        p->lost_device = true;
        FUNC5(ctx);
        return;
    default:
        if (FUNC0(hr))
            FUNC3(ctx->vo, "Failed to present: %s\n", FUNC6(hr));
    }

    if (!gl->DXLockObjectsNV(p->device_h, 1, &p->rtarget_h)) {
        FUNC3(ctx->vo, "Couldn't lock rendertarget after present: %s\n",
               FUNC7());
    }
}