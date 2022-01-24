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
struct vo {int /*<<< orphan*/  log; TYPE_1__* x11; } ;
struct ra_ctx {struct vo* vo; struct priv* priv; } ;
struct priv {scalar_t__ context; int /*<<< orphan*/  vinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  screen; int /*<<< orphan*/  window; int /*<<< orphan*/ * display; } ;
typedef  scalar_t__ GLXContext ;
typedef  int /*<<< orphan*/  GL ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  True ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ glXGetProcAddressARB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct ra_ctx *ctx, GL *gl)
{
    struct priv *p = ctx->priv;
    Display *display = ctx->vo->x11->display;
    struct vo *vo = ctx->vo;

    if (p->context)
        return true;

    if (!p->vinfo) {
        FUNC0(vo, "Can't create a legacy GLX context without X visual\n");
        return false;
    }

    GLXContext new_context = FUNC1(display, p->vinfo, NULL, True);
    if (!new_context) {
        FUNC0(vo, "Could not create GLX context!\n");
        return false;
    }

    if (!FUNC3(display, ctx->vo->x11->window, new_context)) {
        FUNC0(vo, "Could not set GLX context!\n");
        FUNC2(display, new_context);
        return false;
    }

    const char *glxstr = FUNC4(display, ctx->vo->x11->screen);

    FUNC5(gl, (void *)glXGetProcAddressARB, glxstr, vo->log);

    p->context = new_context;

    return true;
}