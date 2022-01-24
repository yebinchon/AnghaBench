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
typedef  int /*<<< orphan*/  pem_password_cb ;
typedef  int /*<<< orphan*/  UI_METHOD ;
typedef  int /*<<< orphan*/  OSSL_STORE_INFO ;
typedef  int /*<<< orphan*/  OSSL_STORE_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  OSSL_STORE_C_USE_SECMEM ; 
 scalar_t__ OSSL_STORE_INFO_PKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

EVP_PKEY *FUNC10(BIO *bp, EVP_PKEY **x, pem_password_cb *cb,
                                  void *u)
{
    EVP_PKEY *ret = NULL;
    OSSL_STORE_CTX *ctx = NULL;
    OSSL_STORE_INFO *info = NULL;
    UI_METHOD *ui_method = NULL;

    if ((ui_method = FUNC6(cb, 0)) == NULL)
        return NULL;

    if ((ctx = FUNC8(bp, ui_method, u)) == NULL)
        goto err;
#ifndef OPENSSL_NO_SECURE_HEAP
    {
        int on = 1;
        if (!FUNC3(ctx, OSSL_STORE_C_USE_SECMEM, &on))
            goto err;
    }
#endif

    while (!FUNC4(ctx) && (info = FUNC5(ctx)) != NULL) {
        if (FUNC2(info) == OSSL_STORE_INFO_PKEY) {
            ret = FUNC1(info);
            break;
        }
        FUNC0(info);
    }

    if (ret != NULL && x != NULL)
        *x = ret;

 err:
    FUNC9(ctx);
    FUNC7(ui_method);
    FUNC0(info);
    return ret;
}