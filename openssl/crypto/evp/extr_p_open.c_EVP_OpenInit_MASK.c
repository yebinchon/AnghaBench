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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned char*,unsigned char const*) ; 
 int /*<<< orphan*/  EVP_F_EVP_OPENINIT ; 
 scalar_t__ EVP_PKEY_RSA ; 
 int FUNC3 (unsigned char*,unsigned char const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_R_PUBLIC_KEY_NOT_RSA ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int) ; 
 unsigned char* FUNC8 (int) ; 

int FUNC9(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *type,
                 const unsigned char *ek, int ekl, const unsigned char *iv,
                 EVP_PKEY *priv)
{
    unsigned char *key = NULL;
    int i, size = 0, ret = 0;

    if (type) {
        FUNC0(ctx);
        if (!FUNC2(ctx, type, NULL, NULL, NULL))
            return 0;
    }

    if (priv == NULL)
        return 1;

    if (FUNC4(priv) != EVP_PKEY_RSA) {
        FUNC6(EVP_F_EVP_OPENINIT, EVP_R_PUBLIC_KEY_NOT_RSA);
        goto err;
    }

    size = FUNC5(priv);
    key = FUNC8(size);
    if (key == NULL) {
        /* ERROR */
        FUNC6(EVP_F_EVP_OPENINIT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    i = FUNC3(key, ek, ekl, priv);
    if ((i <= 0) || !FUNC1(ctx, i)) {
        /* ERROR */
        goto err;
    }
    if (!FUNC2(ctx, NULL, NULL, key, iv))
        goto err;

    ret = 1;
 err:
    FUNC7(key, size);
    return ret;
}