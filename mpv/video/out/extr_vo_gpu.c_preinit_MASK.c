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
struct vo {int /*<<< orphan*/  hwdec_devs; int /*<<< orphan*/  osd; int /*<<< orphan*/  global; int /*<<< orphan*/  log; struct gpu_priv* priv; } ;
struct ra_ctx_opts {int want_alpha; } ;
struct gpu_priv {int /*<<< orphan*/  renderer; TYPE_1__* ctx; int /*<<< orphan*/  context_name; int /*<<< orphan*/  context_type; struct ra_ctx_opts opts; int /*<<< orphan*/  log; } ;
struct TYPE_2__ {int /*<<< orphan*/  ra; int /*<<< orphan*/  swapchain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  call_request_hwdec_api ; 
 int /*<<< orphan*/  FUNC1 (struct gpu_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vo*) ; 
 int /*<<< orphan*/  m_option_type_choice ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int*) ; 
 TYPE_1__* FUNC9 (struct vo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ra_ctx_opts) ; 
 int /*<<< orphan*/  FUNC10 (struct vo*) ; 

__attribute__((used)) static int FUNC11(struct vo *vo)
{
    struct gpu_priv *p = vo->priv;
    p->log = vo->log;

    int alpha_mode;
    FUNC8(vo->global, "alpha", &m_option_type_choice, &alpha_mode);

    struct ra_ctx_opts opts = p->opts;
    opts.want_alpha = alpha_mode == 1;

    p->ctx = FUNC9(vo, p->context_type, p->context_name, opts);
    if (!p->ctx)
        goto err_out;
    FUNC0(p->ctx->ra);
    FUNC0(p->ctx->swapchain);

    p->renderer = FUNC3(p->ctx->ra, vo->log, vo->global);
    FUNC5(p->renderer, vo->osd);
    FUNC2(p->renderer, vo);

    FUNC1(p);

    vo->hwdec_devs = FUNC6();
    FUNC7(vo->hwdec_devs, call_request_hwdec_api, vo);

    FUNC4(p->renderer, vo->hwdec_devs, false);

    return 0;

err_out:
    FUNC10(vo);
    return -1;
}