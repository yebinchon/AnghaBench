#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int (* openssl_ctx_run_once_fn ) (TYPE_1__*) ;
struct TYPE_7__ {int* run_once_done; int* run_once_ret; int /*<<< orphan*/  oncelock; } ;
typedef  TYPE_1__ OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 

int FUNC4(OPENSSL_CTX *ctx, unsigned int idx,
                         openssl_ctx_run_once_fn run_once_fn)
{
    int done = 0, ret = 0;

    ctx = FUNC3(ctx);
    if (ctx == NULL)
        return 0;

    FUNC0(ctx->oncelock);
    done = ctx->run_once_done[idx];
    if (done)
        ret = ctx->run_once_ret[idx];
    FUNC1(ctx->oncelock);

    if (done)
        return ret;

    FUNC2(ctx->oncelock);
    if (ctx->run_once_done[idx]) {
        ret = ctx->run_once_ret[idx];
        FUNC1(ctx->oncelock);
        return ret;
    }

    ret = run_once_fn(ctx);
    ctx->run_once_done[idx] = 1;
    ctx->run_once_ret[idx] = ret;
    FUNC1(ctx->oncelock);

    return ret;
}