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
struct TYPE_4__ {int /*<<< orphan*/ * micros; int /*<<< orphan*/ * millis; int /*<<< orphan*/ * seconds; } ;
typedef  TYPE_1__ TS_RESP_CTX ;

/* Variables and functions */
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  TS_F_TS_RESP_CTX_SET_ACCURACY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(TS_RESP_CTX *ctx,
                             int secs, int millis, int micros)
{

    FUNC2(ctx);
    if (secs
        && ((ctx->seconds = FUNC0()) == NULL
            || !FUNC1(ctx->seconds, secs)))
        goto err;
    if (millis
        && ((ctx->millis = FUNC0()) == NULL
            || !FUNC1(ctx->millis, millis)))
        goto err;
    if (micros
        && ((ctx->micros = FUNC0()) == NULL
            || !FUNC1(ctx->micros, micros)))
        goto err;

    return 1;
 err:
    FUNC2(ctx);
    FUNC3(TS_F_TS_RESP_CTX_SET_ACCURACY, ERR_R_MALLOC_FAILURE);
    return 0;
}