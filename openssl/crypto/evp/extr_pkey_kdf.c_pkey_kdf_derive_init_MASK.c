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
struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int /*<<< orphan*/ * kctx; } ;
typedef  TYPE_1__ EVP_PKEY_KDF_CTX ;
typedef  TYPE_2__ EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(EVP_PKEY_CTX *ctx)
{
    EVP_PKEY_KDF_CTX *pkctx = ctx->data;

    FUNC1(pkctx);
    if (pkctx->kctx != NULL)
        FUNC0(pkctx->kctx);
    return 1;
}