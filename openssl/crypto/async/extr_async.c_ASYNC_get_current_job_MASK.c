#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * currjob; } ;
typedef  TYPE_1__ async_ctx ;
typedef  int /*<<< orphan*/  ASYNC_JOB ;

/* Variables and functions */
 int /*<<< orphan*/  OPENSSL_INIT_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 () ; 

ASYNC_JOB *FUNC2(void)
{
    async_ctx *ctx;

    if (!FUNC0(OPENSSL_INIT_ASYNC, NULL))
        return NULL;

    ctx = FUNC1();
    if (ctx == NULL)
        return NULL;

    return ctx->currjob;
}