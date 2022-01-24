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
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int EVP_CIPH_CBC_MODE ; 
 int EVP_CIPH_ECB_MODE ; 
 int /*<<< orphan*/  EVP_F_ARIA_INIT_KEY ; 
 int /*<<< orphan*/  EVP_R_ARIA_KEY_SETUP_FAILED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(EVP_CIPHER_CTX *ctx, const unsigned char *key,
                            const unsigned char *iv, int enc)
{
    int ret;
    int mode = FUNC2(ctx);

    if (enc || (mode != EVP_CIPH_ECB_MODE && mode != EVP_CIPH_CBC_MODE))
        ret = FUNC5(key, FUNC1(ctx) * 8,
                                        FUNC0(ctx));
    else
        ret = FUNC4(key, FUNC1(ctx) * 8,
                                        FUNC0(ctx));
    if (ret < 0) {
        FUNC3(EVP_F_ARIA_INIT_KEY,EVP_R_ARIA_KEY_SETUP_FAILED);
        return 0;
    }
    return 1;
}