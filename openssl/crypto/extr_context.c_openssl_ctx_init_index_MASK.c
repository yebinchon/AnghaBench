#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int* dyn_indexes; } ;
typedef  int /*<<< orphan*/  OPENSSL_CTX_METHOD ;
typedef  TYPE_1__ OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_OPENSSL_CTX ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  openssl_ctx_generic_free ; 
 int /*<<< orphan*/  openssl_ctx_generic_new ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(OPENSSL_CTX *ctx, int static_index,
                                  const OPENSSL_CTX_METHOD *meth)
{
    int idx;

    ctx = FUNC1(ctx);
    if (ctx == NULL)
        return 0;

    idx = FUNC0(ctx, CRYPTO_EX_INDEX_OPENSSL_CTX, 0,
                                     (void *)meth,
                                     openssl_ctx_generic_new,
                                     NULL, openssl_ctx_generic_free);
    if (idx < 0)
        return 0;

    ctx->dyn_indexes[static_index] = idx;
    return 1;
}