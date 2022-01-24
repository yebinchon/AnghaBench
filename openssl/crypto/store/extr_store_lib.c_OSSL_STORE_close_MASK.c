#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ loader_ctx; TYPE_1__* loader; } ;
struct TYPE_5__ {int (* close ) (scalar_t__) ;} ;
typedef  TYPE_2__ OSSL_STORE_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  STORE ; 
 int FUNC2 (scalar_t__) ; 

int FUNC3(OSSL_STORE_CTX *ctx)
{
    int loader_ret;

    FUNC1(STORE, "Closing %p\n", (void *)ctx->loader_ctx);
    loader_ret = ctx->loader->close(ctx->loader_ctx);

    FUNC0(ctx);
    return loader_ret;
}