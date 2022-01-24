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
typedef  int /*<<< orphan*/  randbuf ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  exptd ;
typedef  int /*<<< orphan*/  RAND_DRBG ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_KDF ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_RAND_BOTTOM_ANY ; 
 int /*<<< orphan*/  BN_RAND_TOP_ANY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NID_X9_62_prime256v1 ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSSL_KDF_NAME_PBKDF2 ; 
 int /*<<< orphan*/ * FUNC23 (void*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int SHA256_DIGEST_LENGTH ; 
 scalar_t__ FUNC25 (unsigned char*,unsigned char const*,int) ; 

__attribute__((used)) static int FUNC26(void *provctx)
{
    OPENSSL_CTX *libctx = FUNC23(provctx);
    EVP_MD_CTX *ctx = FUNC19();
    EVP_MD *sha256 = FUNC20(libctx, "SHA256", NULL);
    EVP_KDF *kdf = FUNC16(libctx, OSSL_KDF_NAME_PBKDF2, NULL);
    char msg[] = "Hello World!";
    const unsigned char exptd[] = {
        0x7f, 0x83, 0xb1, 0x65, 0x7f, 0xf1, 0xfc, 0x53, 0xb9, 0x2d, 0xc1, 0x81,
        0x48, 0xa1, 0xd6, 0x5d, 0xfc, 0x2d, 0x4b, 0x1f, 0xa3, 0xd6, 0x77, 0x28,
        0x4a, 0xdd, 0xd2, 0x00, 0x12, 0x6d, 0x90, 0x69
    };
    unsigned int dgstlen = 0;
    unsigned char dgst[SHA256_DIGEST_LENGTH];
    int ret = 0;
    BN_CTX *bnctx = NULL;
    BIGNUM *a = NULL, *b = NULL;
    unsigned char randbuf[128];
    RAND_DRBG *drbg = FUNC22(libctx);
#ifndef OPENSSL_NO_EC
    EC_KEY *key = NULL;
#endif

    if (ctx == NULL || sha256 == NULL || drbg == NULL || kdf == NULL)
        goto err;

    if (!FUNC14(ctx, sha256, NULL))
        goto err;
    if (!FUNC15(ctx, msg, sizeof(msg) - 1))
        goto err;
    if (!FUNC13(ctx, dgst, &dgstlen))
        goto err;
    if (dgstlen != sizeof(exptd) || FUNC25(dgst, exptd, sizeof(exptd)) != 0)
        goto err;

    bnctx = FUNC3(libctx);
    if (bnctx == NULL)
        goto err;
    FUNC4(bnctx);
    a = FUNC2(bnctx);
    b = FUNC2(bnctx);
    if (b == NULL)
        goto err;
    FUNC9(a);
    if (!FUNC7(b)
        || !FUNC5(a, a, b)
        || FUNC6(a, b) != 0)
        goto err;

    if (FUNC24(drbg, randbuf, sizeof(randbuf)) <= 0)
        goto err;

    if (!FUNC8(a, 256, BN_RAND_TOP_ANY, BN_RAND_BOTTOM_ANY, bnctx))
        goto err;

#ifndef OPENSSL_NO_EC
    /* Do some dummy EC calls */
    key = FUNC12(libctx, NID_X9_62_prime256v1);
    if (key == NULL)
        goto err;

    if (!FUNC11(key))
        goto err;
#endif

    ret = 1;
 err:
    FUNC0(bnctx);
    FUNC1(bnctx);

    FUNC17(kdf);
    FUNC18(ctx);
    FUNC21(sha256);

#ifndef OPENSSL_NO_EC
    FUNC10(key);
#endif
    return ret;
}