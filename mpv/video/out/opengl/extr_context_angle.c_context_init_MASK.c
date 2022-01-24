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
struct priv {int /*<<< orphan*/  egl_config; int /*<<< orphan*/  egl_context; int /*<<< orphan*/  egl_display; } ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_EXTENSIONS ; 
 int /*<<< orphan*/  FUNC0 (struct vo*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ra_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct vo *vo = ctx->vo;

    if (!FUNC3(p->egl_display, NULL, NULL)) {
        FUNC1(vo, "Couldn't initialize EGL\n");
        goto fail;
    }

    const char *exts = FUNC4(p->egl_display, EGL_EXTENSIONS);
    if (exts)
        FUNC0(vo, "EGL extensions: %s\n", exts);

    if (!FUNC5(ctx, p->egl_display, &p->egl_context,
                              &p->egl_config))
    {
        FUNC1(vo, "Could not create EGL context!\n");
        goto fail;
    }

    return true;
fail:
    FUNC2(ctx);
    return false;
}