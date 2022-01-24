#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  OSSL_STORE_INFO ;
typedef  int /*<<< orphan*/  OSSL_STORE_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ OSSL_STORE_INFO_PARAMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

EVP_PKEY *FUNC8(BIO *bp, EVP_PKEY **x)
{
    EVP_PKEY *ret = NULL;
    OSSL_STORE_CTX *ctx = NULL;
    OSSL_STORE_INFO *info = NULL;

    if ((ctx = FUNC6(bp, FUNC5(), NULL)) == NULL)
        goto err;

    while (!FUNC3(ctx) && (info = FUNC4(ctx)) != NULL) {
        if (FUNC2(info) == OSSL_STORE_INFO_PARAMS) {
            ret = FUNC1(info);
            break;
        }
        FUNC0(info);
    }

    if (ret != NULL && x != NULL)
        *x = ret;

 err:
    FUNC7(ctx);
    FUNC0(info);
    return ret;
}