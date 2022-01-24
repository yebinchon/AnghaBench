#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  cipher; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_1__ KRB5KDF_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 size_t EVP_MAX_KEY_LENGTH ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *vctx, OSSL_PARAM params[])
{
    KRB5KDF_CTX *ctx = (KRB5KDF_CTX *)vctx;
    const EVP_CIPHER *cipher;
    size_t len;
    OSSL_PARAM *p;

    cipher = FUNC3(&ctx->cipher);
    if (cipher)
        len = FUNC0(cipher);
    else
        len = EVP_MAX_KEY_LENGTH;

    if ((p = FUNC1(params, OSSL_KDF_PARAM_SIZE)) != NULL)
        return FUNC2(p, len);
    return -2;
}