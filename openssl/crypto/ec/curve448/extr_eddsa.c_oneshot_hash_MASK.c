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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  c448_error_t ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  C448_FAILURE ; 
 int /*<<< orphan*/  C448_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static c448_error_t FUNC7(OPENSSL_CTX *ctx, uint8_t *out, size_t outlen,
                                 const uint8_t *in, size_t inlen)
{
    EVP_MD_CTX *hashctx = FUNC4();
    EVP_MD *shake256 = NULL;
    c448_error_t ret = C448_FAILURE;

    if (hashctx == NULL)
        return C448_FAILURE;

    shake256 = FUNC5(ctx, "SHAKE256", NULL);
    if (shake256 == NULL)
        goto err;

    if (!FUNC1(hashctx, shake256, NULL)
            || !FUNC2(hashctx, in, inlen)
            || !FUNC0(hashctx, out, outlen))
        goto err;

    ret = C448_SUCCESS;
 err:
    FUNC3(hashctx);
    FUNC6(shake256);
    return ret;
}