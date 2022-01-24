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
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned char*,unsigned char*) ; 
 int EVP_MAX_KEY_LENGTH ; 
 int FUNC5 (unsigned char*,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 scalar_t__ FUNC7 (unsigned char*,scalar_t__) ; 

int FUNC8(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *type,
                 unsigned char **ek, int *ekl, unsigned char *iv,
                 EVP_PKEY **pubk, int npubk)
{
    unsigned char key[EVP_MAX_KEY_LENGTH];
    int i;
    int rv = 0;

    if (type) {
        FUNC3(ctx);
        if (!FUNC4(ctx, type, NULL, NULL, NULL))
            return 0;
    }
    if ((npubk <= 0) || !pubk)
        return 1;
    if (FUNC2(ctx, key) <= 0)
        return 0;

    if (FUNC0(ctx)
            && FUNC7(iv, FUNC0(ctx)) <= 0)
        goto err;

    if (!FUNC4(ctx, NULL, NULL, key, iv))
        goto err;

    for (i = 0; i < npubk; i++) {
        ekl[i] =
            FUNC5(ek[i], key, FUNC1(ctx),
                                 pubk[i]);
        if (ekl[i] <= 0) {
            rv = -1;
            goto err;
        }
    }
    rv = npubk;
err:
    FUNC6(key, sizeof(key));
    return rv;
}