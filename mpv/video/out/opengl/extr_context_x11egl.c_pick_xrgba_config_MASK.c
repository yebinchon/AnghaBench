#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vo {TYPE_1__* x11; } ;
struct ra_ctx {struct vo* vo; struct priv* priv; } ;
struct priv {int /*<<< orphan*/  egl_display; } ;
struct TYPE_8__ {int visualid; } ;
typedef  TYPE_2__ XVisualInfo ;
struct TYPE_7__ {int /*<<< orphan*/  display; } ;
typedef  int /*<<< orphan*/  EGLConfig ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_NATIVE_VISUAL_ID ; 
 int /*<<< orphan*/  VisualIDMask ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(void *user_data, EGLConfig *configs, int num_configs)
{
    struct ra_ctx *ctx = user_data;
    struct priv *p = ctx->priv;
    struct vo *vo = ctx->vo;

    for (int n = 0; n < num_configs; n++) {
        int vID = 0, num;
        FUNC2(p->egl_display, configs[n], EGL_NATIVE_VISUAL_ID, &vID);
        XVisualInfo template = {.visualid = vID};
        XVisualInfo *vi = FUNC1(vo->x11->display, VisualIDMask,
                                         &template, &num);
        if (vi) {
            bool is_rgba = FUNC3(vi);
            FUNC0(vi);
            if (is_rgba)
                return n;
        }
    }

    return 0;
}