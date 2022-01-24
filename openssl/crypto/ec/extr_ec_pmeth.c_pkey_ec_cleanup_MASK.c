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
struct TYPE_6__ {struct TYPE_6__* kdf_ukm; int /*<<< orphan*/  co_key; int /*<<< orphan*/  gen_group; } ;
struct TYPE_5__ {TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_PKEY_CTX ;
typedef  TYPE_2__ EC_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(EVP_PKEY_CTX *ctx)
{
    EC_PKEY_CTX *dctx = ctx->data;
    if (dctx != NULL) {
        FUNC0(dctx->gen_group);
        FUNC1(dctx->co_key);
        FUNC2(dctx->kdf_ukm);
        FUNC2(dctx);
        ctx->data = NULL;
    }
}