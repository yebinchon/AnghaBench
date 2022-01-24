#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_4__ {int epoch_time_in_ms; } ;
typedef  TYPE_1__ CT_POLICY_EVAL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CT_F_CT_POLICY_EVAL_CTX_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__ SCT_CLOCK_DRIFT_TOLERANCE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

CT_POLICY_EVAL_CTX *FUNC3(void)
{
    CT_POLICY_EVAL_CTX *ctx = FUNC1(sizeof(CT_POLICY_EVAL_CTX));

    if (ctx == NULL) {
        FUNC0(CT_F_CT_POLICY_EVAL_CTX_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    /* time(NULL) shouldn't ever fail, so don't bother checking for -1. */
    ctx->epoch_time_in_ms = (uint64_t)(FUNC2(NULL) + SCT_CLOCK_DRIFT_TOLERANCE) *
            1000;

    return ctx;
}