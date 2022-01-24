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
struct TYPE_4__ {int operation; int /*<<< orphan*/ * keymgmt; int /*<<< orphan*/  propquery; int /*<<< orphan*/ * algorithm; } ;
typedef  TYPE_1__ EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_EVP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int EVP_PKEY_OP_UNDEFINED ; 
 int /*<<< orphan*/  EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(EVP_PKEY_CTX *ctx, int operation)
{
    if (ctx == NULL || ctx->algorithm == NULL)
        goto not_supported;

    FUNC2(ctx);
    ctx->operation = operation;
    if (ctx->keymgmt == NULL)
        ctx->keymgmt = FUNC1(NULL, ctx->algorithm, ctx->propquery);
    if (ctx->keymgmt == NULL)
        goto not_supported;

    return 1;

 not_supported:
    ctx->operation = EVP_PKEY_OP_UNDEFINED;
    FUNC0(ERR_LIB_EVP, EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
    return -2;
}