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
struct TYPE_3__ {int operation; int /*<<< orphan*/  keymgmt; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_1__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_EVP ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EVP_PKEY_OP_PARAMFROMDATA ; 
 int EVP_PKEY_OP_TYPE_FROMDATA ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC3(EVP_PKEY_CTX *ctx, EVP_PKEY **ppkey, OSSL_PARAM params[])
{
    void *provdata = NULL;

    if (ctx == NULL || (ctx->operation & EVP_PKEY_OP_TYPE_FROMDATA) == 0) {
        FUNC0(ERR_LIB_EVP, EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;
    }

    if (ppkey == NULL)
        return -1;

    if (*ppkey == NULL)
        *ppkey = FUNC1();

    if (*ppkey == NULL) {
        FUNC0(ERR_LIB_EVP, ERR_R_MALLOC_FAILURE);
        return -1;
    }

    provdata =
        FUNC2(*ppkey, ctx->keymgmt, params,
                             ctx->operation == EVP_PKEY_OP_PARAMFROMDATA);

    if (provdata == NULL)
        return 0;
    /* provdata is cached in *ppkey, so we need not bother with it further */
    return 1;
}