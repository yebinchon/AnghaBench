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
typedef  int /*<<< orphan*/  pt ;
typedef  unsigned char EVP_PKEY_CTX ;
typedef  unsigned char EVP_PKEY ;
typedef  unsigned char ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 () ; 
 scalar_t__ FUNC2 (unsigned char*,char*) ; 
 scalar_t__ FUNC3 (unsigned char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 unsigned char* FUNC6 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  EVP_PKEY_RSA ; 
 scalar_t__ FUNC7 (unsigned char*,unsigned char*,size_t*,unsigned char const*,int) ; 
 scalar_t__ FUNC8 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 unsigned char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (unsigned char*,unsigned char*) ; 
 size_t FUNC13 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*) ; 
 unsigned char* FUNC15 (size_t) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC21 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 scalar_t__ called_encrypt ; 
 unsigned char* FUNC23 () ; 
 int /*<<< orphan*/  test_encrypt ; 
 int /*<<< orphan*/  test_pkey_meths ; 
 unsigned char* test_rsa ; 

__attribute__((used)) static int FUNC24(void)
{
    const unsigned char pt[] = "Hello World\n";
    unsigned char *tmp = NULL;
    size_t len;
    EVP_PKEY_CTX *ctx = NULL;
    ENGINE *e = NULL;
    EVP_PKEY *pkey = NULL;

    int to_return = 0;

    if (!FUNC20(pkey = FUNC23()))
        goto err;

    len = FUNC13(pkey);
    if (!FUNC20(tmp = FUNC15(len)))
        goto err;

    if (!FUNC20(ctx = FUNC6(pkey, NULL)))
        goto err;
    FUNC17("EVP_PKEY_encrypt test: no redirection");
    /* Encrypt some data: should succeed but not be redirected */
    if (!FUNC18(FUNC8(ctx), 0)
            || !FUNC18(FUNC7(ctx, tmp, &len, pt, sizeof(pt)), 0)
            || !FUNC16(called_encrypt))
        goto err;
    FUNC5(ctx);
    ctx = NULL;

    /* Create a test ENGINE */
    if (!FUNC20(e = FUNC1())
            || !FUNC22(FUNC2(e, "Test redirect engine"))
            || !FUNC22(FUNC3(e, "Test redirect engine")))
        goto err;

    /*
     * Try to create a context for this engine and test key.
     * Try setting test key engine. Both should fail because the
     * engine has no public key methods.
     */
    if (!FUNC21(ctx = FUNC6(pkey, e))
            || !FUNC19(FUNC12(pkey, e), 0))
        goto err;

    /* Setup an empty test EVP_PKEY_METHOD and set callback to return it */
    if (!FUNC20(test_rsa = FUNC10(EVP_PKEY_RSA, 0)))
        goto err;
    FUNC4(e, test_pkey_meths);

    /* Getting a context for test ENGINE should now succeed */
    if (!FUNC20(ctx = FUNC6(pkey, e)))
        goto err;
    /* Encrypt should fail because operation is not supported */
    if (!FUNC19(FUNC8(ctx), 0))
        goto err;
    FUNC5(ctx);
    ctx = NULL;

    /* Add test encrypt operation to method */
    FUNC11(test_rsa, 0, test_encrypt);

    FUNC17("EVP_PKEY_encrypt test: redirection via EVP_PKEY_CTX_new()");
    if (!FUNC20(ctx = FUNC6(pkey, e)))
        goto err;
    /* Encrypt some data: should succeed and be redirected */
    if (!FUNC18(FUNC8(ctx), 0)
            || !FUNC18(FUNC7(ctx, tmp, &len, pt, sizeof(pt)), 0)
            || !FUNC22(called_encrypt))
        goto err;

    FUNC5(ctx);
    ctx = NULL;
    called_encrypt = 0;

    /* Create context with default engine: should not be redirected */
    if (!FUNC20(ctx = FUNC6(pkey, NULL))
            || !FUNC18(FUNC8(ctx), 0)
            || !FUNC18(FUNC7(ctx, tmp, &len, pt, sizeof(pt)), 0)
            || !FUNC16(called_encrypt))
        goto err;

    FUNC5(ctx);
    ctx = NULL;

    /* Set engine explicitly for test key */
    if (!FUNC22(FUNC12(pkey, e)))
        goto err;

    FUNC17("EVP_PKEY_encrypt test: redirection via EVP_PKEY_set1_engine()");

    /* Create context with default engine: should be redirected now */
    if (!FUNC20(ctx = FUNC6(pkey, NULL))
            || !FUNC18(FUNC8(ctx), 0)
            || !FUNC18(FUNC7(ctx, tmp, &len, pt, sizeof(pt)), 0)
            || !FUNC22(called_encrypt))
        goto err;

    to_return = 1;

 err:
    FUNC5(ctx);
    FUNC9(pkey);
    FUNC0(e);
    FUNC14(tmp);
    return to_return;
}