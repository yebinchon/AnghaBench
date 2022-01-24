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
struct priv {int /*<<< orphan*/  d3d11_device; scalar_t__ egl_device; scalar_t__ egl_display; } ;
typedef  int /*<<< orphan*/  (* PFNEGLRELEASEDEVICEANGLEPROC ) (scalar_t__) ;

/* Variables and functions */
 scalar_t__ EGL_NO_DISPLAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    PFNEGLRELEASEDEVICEANGLEPROC eglReleaseDeviceANGLE =
        (PFNEGLRELEASEDEVICEANGLEPROC)FUNC1("eglReleaseDeviceANGLE");

    if (p->egl_display)
        FUNC2(p->egl_display);
    p->egl_display = EGL_NO_DISPLAY;

    if (p->egl_device && eglReleaseDeviceANGLE)
        eglReleaseDeviceANGLE(p->egl_device);
    p->egl_device = 0;

    FUNC0(p->d3d11_device);
}