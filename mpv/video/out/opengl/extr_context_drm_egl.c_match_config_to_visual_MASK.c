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
struct ra_ctx {struct priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  display; } ;
struct priv {scalar_t__ const gbm_format; TYPE_1__ egl; } ;
typedef  scalar_t__ const EGLint ;
typedef  int /*<<< orphan*/  EGLConfig ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_NATIVE_VISUAL_ID ; 
 int /*<<< orphan*/  FUNC0 (struct ra_ctx*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_ctx*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ const) ; 

__attribute__((used)) static int FUNC5(void *user_data, EGLConfig *configs, int num_configs)
{
    struct ra_ctx *ctx = (struct ra_ctx*)user_data;
    struct priv *p = ctx->priv;
    const EGLint visual_id[] = {
        (EGLint)p->gbm_format,
        (EGLint)FUNC3(p->gbm_format),
        0
    };

    for (unsigned int i = 0; visual_id[i] != 0; ++i) {
        FUNC1(ctx, "Attempting to find EGLConfig matching %s\n",
                   FUNC4(visual_id[i]));
        for (unsigned int j = 0; j < num_configs; ++j) {
            EGLint id;

            if (!FUNC2(p->egl.display, configs[j], EGL_NATIVE_VISUAL_ID, &id))
                continue;

            if (visual_id[i] == id) {
                FUNC1(ctx, "Found matching EGLConfig for %s\n",
                           FUNC4(visual_id[i]));
                return j;
            }
        }
        FUNC1(ctx, "No matching EGLConfig for %s\n", FUNC4(visual_id[i]));
    }

    FUNC0(ctx, "Could not find EGLConfig matching the GBM visual (%s).\n",
           FUNC4(p->gbm_format));
    return -1;
}