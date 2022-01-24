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
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  NID_sha256 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SHA256_CBLOCK ; 
 int /*<<< orphan*/  SHA256_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*,int,unsigned char const*) ; 
 scalar_t__ expected_fetch_result ; 
 int /*<<< orphan*/  fetch_property ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ use_default_ctx ; 

__attribute__((used)) static int FUNC16(void)
{
    OPENSSL_CTX *ctx = NULL;
    EVP_MD *md = NULL;
    OSSL_PROVIDER *prov[2] = {NULL, NULL};
    int ret = 0;
    const char testmsg[] = "Hello world";
    const unsigned char exptd[] = {
      0x27, 0x51, 0x8b, 0xa9, 0x68, 0x30, 0x11, 0xf6, 0xb3, 0x96, 0x07, 0x2c,
      0x05, 0xf6, 0x65, 0x6d, 0x04, 0xf5, 0xfb, 0xc3, 0x78, 0x7c, 0xf9, 0x24,
      0x90, 0xec, 0x60, 0x6e, 0x50, 0x92, 0xe3, 0x26
    };

    if (use_default_ctx == 0 && !FUNC15(&ctx, prov))
        goto err;

    /* Implicit fetching of the MD should produce the expected result */
    if (!FUNC13(FUNC14(FUNC6(), testmsg, sizeof(testmsg),
                                    exptd))
            || !FUNC10(FUNC4(FUNC6()), SHA256_DIGEST_LENGTH)
            || !FUNC10(FUNC0(FUNC6()), SHA256_CBLOCK))
        goto err;

    /* Fetch the digest from a provider using properties. */
    md = FUNC1(ctx, "SHA256", fetch_property);
    if (expected_fetch_result != 0) {
        if (!FUNC11(md)
            || !FUNC10(FUNC3(md), NID_sha256)
            || !FUNC13(FUNC14(md, testmsg, sizeof(testmsg), exptd))
            || !FUNC10(FUNC4(md), SHA256_DIGEST_LENGTH)
            || !FUNC10(FUNC0(md), SHA256_CBLOCK))
        goto err;

        /* Also test EVP_MD_up_ref() while we're doing this */
        if (!FUNC13(FUNC5(md)))
            goto err;
        /* Ref count should now be 2. Release first one here */
        FUNC2(md);
    } else {
        if (!FUNC12(md))
            goto err;
    }
    ret = 1;

err:
    FUNC2(md);
    FUNC9(prov[0]);
    FUNC9(prov[1]);
    /* Not normally needed, but we would like to test that
     * OPENSSL_thread_stop_ex() behaves as expected.
     */
    if (ctx != NULL) {
        FUNC8(ctx);
        FUNC7(ctx);
    }
    return ret;
}