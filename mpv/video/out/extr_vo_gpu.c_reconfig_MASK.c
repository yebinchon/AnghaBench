#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vo {struct gpu_priv* priv; } ;
struct mp_image_params {int dummy; } ;
struct gpu_priv {int /*<<< orphan*/  renderer; TYPE_2__* ctx; } ;
struct TYPE_4__ {TYPE_1__* fns; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* reconfig ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mp_image_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(struct vo *vo, struct mp_image_params *params)
{
    struct gpu_priv *p = vo->priv;

    if (!p->ctx->fns->reconfig(p->ctx))
        return -1;

    FUNC1(vo);
    FUNC0(p->renderer, params);

    return 0;
}