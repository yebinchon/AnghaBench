#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct render_backend {int /*<<< orphan*/  hwdec_devs; struct priv* priv; } ;
struct priv {TYPE_2__* context; scalar_t__ renderer; } ;
struct TYPE_5__ {struct TYPE_5__* priv; TYPE_1__* fns; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(struct render_backend *ctx)
{
    struct priv *p = ctx->priv;

    if (p->renderer)
        FUNC0(p->renderer);

    FUNC1(ctx->hwdec_devs);

    if (p->context) {
        p->context->fns->destroy(p->context);
        FUNC3(p->context->priv);
        FUNC3(p->context);
    }
}