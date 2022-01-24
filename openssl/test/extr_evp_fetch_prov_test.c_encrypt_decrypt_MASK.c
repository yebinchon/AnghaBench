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
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(const EVP_CIPHER *cipher, const unsigned char *msg,
                           size_t len)
{
    int ret = 0, ctlen, ptlen;
    EVP_CIPHER_CTX *ctx = NULL;
    unsigned char key[128 / 8];
    unsigned char ct[64], pt[64];

    FUNC8(key, 0, sizeof(key));
    if (!FUNC6(ctx = FUNC1())
            || !FUNC7(FUNC3(ctx, cipher, NULL, key, NULL, 1))
            || !FUNC7(FUNC4(ctx, ct, &ctlen, msg, len))
            || !FUNC7(FUNC2(ctx, ct, &ctlen))
            || !FUNC7(FUNC3(ctx, cipher, NULL, key, NULL, 0))
            || !FUNC7(FUNC4(ctx, pt, &ptlen, ct, ctlen))
            || !FUNC7(FUNC2(ctx, pt, &ptlen))
            || !FUNC5(pt, ptlen, msg, len))
        goto err;

    ret = 1;
err:
    FUNC0(ctx);
    return ret;
}