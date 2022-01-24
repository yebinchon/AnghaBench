#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  engine; int /*<<< orphan*/  peerkey; int /*<<< orphan*/  pkey; int /*<<< orphan*/  keymgmt; TYPE_1__* pmeth; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* cleanup ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6(EVP_PKEY_CTX *ctx)
{
    if (ctx == NULL)
        return;
    if (ctx->pmeth && ctx->pmeth->cleanup)
        ctx->pmeth->cleanup(ctx);

    FUNC4(ctx);
    FUNC1(ctx->keymgmt);

    FUNC2(ctx->pkey);
    FUNC2(ctx->peerkey);
#ifndef OPENSSL_NO_ENGINE
    FUNC0(ctx->engine);
#endif
    FUNC3(ctx);
}