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
struct TYPE_3__ {int /*<<< orphan*/ * pkey; int /*<<< orphan*/ * p10CSR; int /*<<< orphan*/ * newPkey; int /*<<< orphan*/  newPkey_priv; } ;
typedef  TYPE_1__ OSSL_CMP_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  CMP_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

EVP_PKEY *FUNC2(const OSSL_CMP_CTX *ctx, int priv)
{
    if (ctx == NULL) {
        FUNC0(0, CMP_R_NULL_ARGUMENT);
        return NULL;
    }

    if (ctx->newPkey != NULL)
        return priv && !ctx->newPkey_priv ? NULL : ctx->newPkey;
    if (ctx->p10CSR != NULL)
        return priv ? NULL : FUNC1(ctx->p10CSR);
    return ctx->pkey; /* may be NULL */
}