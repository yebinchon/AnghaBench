#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int len_set; int /*<<< orphan*/  iv; TYPE_1__* hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* setiv ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ;} ;
typedef  TYPE_1__ PROV_CCM_HW ;
typedef  TYPE_2__ PROV_CCM_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC2(PROV_CCM_CTX *ctx, size_t mlen)
{
    const PROV_CCM_HW *hw = ctx->hw;

    if (!hw->setiv(ctx, ctx->iv, FUNC0(ctx), mlen))
        return 0;
    ctx->len_set = 1;
    return 1;
}