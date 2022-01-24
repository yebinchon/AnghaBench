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
typedef  int /*<<< orphan*/  testmsg ;
typedef  int /*<<< orphan*/  OSSL_PROVIDER ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 scalar_t__ expected_fetch_result ; 
 int /*<<< orphan*/  fetch_property ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ use_default_ctx ; 

__attribute__((used)) static int FUNC11(void)
{
    OPENSSL_CTX *ctx = NULL;
    EVP_CIPHER *cipher = NULL;
    OSSL_PROVIDER *prov[2] = {NULL, NULL};
    int ret = 0;
    const unsigned char testmsg[] = "Hello world";

    if (use_default_ctx == 0 && !FUNC10(&ctx, prov))
        goto err;

    /* Implicit fetching of the cipher should produce the expected result */
    if (!FUNC8(FUNC9(FUNC3(), testmsg, sizeof(testmsg))))
        goto err;

    /* Fetch the cipher from a provider using properties. */
    cipher = FUNC0(ctx, "AES-128-CBC", fetch_property);
    if (expected_fetch_result != 0) {
        if (!FUNC6(cipher)
            || !FUNC8(FUNC9(cipher, testmsg, sizeof(testmsg)))) {
            if (!FUNC8(FUNC2(cipher)))
                goto err;
            /* Ref count should now be 2. Release first one here */
            FUNC1(cipher);
        }
    } else {
        if (!FUNC7(cipher))
            goto err;
    }
    ret = 1;
err:
    FUNC1(cipher);
    FUNC5(prov[0]);
    FUNC5(prov[1]);
    FUNC4(ctx);
    return ret;
}