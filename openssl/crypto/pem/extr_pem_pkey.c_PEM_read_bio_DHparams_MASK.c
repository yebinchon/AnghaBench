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
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ EVP_PKEY_DH ; 
 scalar_t__ EVP_PKEY_DHX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ OSSL_STORE_INFO_PARAMS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

DH *FUNC11(BIO *bp, DH **x, pem_password_cb *cb, void *u)
{
    DH *ret = NULL;
    EVP_PKEY *pkey = NULL;
    OSSL_STORE_CTX *ctx = NULL;
    OSSL_STORE_INFO *info = NULL;
    UI_METHOD *ui_method = NULL;

    if ((ui_method = FUNC7(cb, 0)) == NULL)
        return NULL;

    if ((ctx = FUNC9(bp, ui_method, u)) == NULL)
        goto err;

    while (!FUNC5(ctx) && (info = FUNC6(ctx)) != NULL) {
        if (FUNC4(info) == OSSL_STORE_INFO_PARAMS) {
            pkey = FUNC3(info);
            if (FUNC1(pkey) == EVP_PKEY_DHX
                || FUNC1(pkey) == EVP_PKEY_DH) {
                ret = FUNC0(pkey);
                break;
            }
        }
        FUNC2(info);
    }

    if (ret != NULL && x != NULL)
        *x = ret;

 err:
    FUNC10(ctx);
    FUNC8(ui_method);
    FUNC2(info);
    return ret;
}