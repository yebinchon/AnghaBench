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
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  len ;
typedef  int /*<<< orphan*/  expected ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  EVP_KDF_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_KDF_CTRL_SET_ITER ; 
 int /*<<< orphan*/  EVP_KDF_CTRL_SET_PBKDF2_PKCS5_MODE ; 
 int /*<<< orphan*/  EVP_KDF_CTRL_SET_SALT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  OSSL_KDF_NAME_PBKDF2 ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_DIGEST ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_ITER ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_PASSWORD ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_PKCS5 ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SALT ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 size_t SIZE_MAX ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(void)
{
    int ret = 0;
    EVP_KDF_CTX *kctx;
    unsigned char out[25];
    size_t len = 0;
    unsigned int iterations = 4096;
    int mode = 0;
    OSSL_PARAM params[6], *p = params;
    const unsigned char expected[sizeof(out)] = {
        0x34, 0x8c, 0x89, 0xdb, 0xcb, 0xd3, 0x2b, 0x2f,
        0x32, 0xd8, 0x14, 0xb8, 0x11, 0x6e, 0x84, 0xcf,
        0x2b, 0x17, 0x34, 0x7e, 0xbc, 0x18, 0x00, 0x18,
        0x1c
    };

    if (sizeof(len) > 32)
        len = SIZE_MAX;

    *p++ = FUNC6(OSSL_KDF_PARAM_PASSWORD,
                                             (unsigned char *)
                                                "passwordPASSWORDpassword", 24);
    *p++ = FUNC6(OSSL_KDF_PARAM_SALT,
                                             (unsigned char *)
                                                "saltSALTsaltSALTsaltSALTsaltSALTsalt",
                                                36);
    *p++ = FUNC7(OSSL_KDF_PARAM_ITER, &iterations);
    *p++ = FUNC8(OSSL_KDF_PARAM_DIGEST,
                                             (char *)"sha256", 7);
    *p++ = FUNC5(OSSL_KDF_PARAM_PKCS5, &mode);
    *p = FUNC4();

    if (!FUNC12(kctx = FUNC14(OSSL_KDF_NAME_PBKDF2))
        || !FUNC13(FUNC1(kctx, params))
        || !FUNC10(FUNC3(kctx, out, sizeof(out)), 0)
        || !FUNC11(out, sizeof(out), expected, sizeof(expected))
        || !FUNC13(FUNC1(kctx, params))
        /* A key length that is too small should fail */
        || !FUNC9(FUNC3(kctx, out, 112 / 8 - 1), 0)
        /* A key length that is too large should fail */
        || (len != 0 && !FUNC9(FUNC3(kctx, out, len), 0)))
        goto err;
#if 0
/* TODO */
          /* Salt length less than 128 bits should fail */
          || TEST_int_eq(EVP_KDF_ctrl(kctx, EVP_KDF_CTRL_SET_SALT,
                                      "123456781234567",
                                      (size_t)15), 0)
          /* A small iteration count should fail */
          || TEST_int_eq(EVP_KDF_ctrl(kctx, EVP_KDF_CTRL_SET_ITER, 1), 0)
          || TEST_int_gt(EVP_KDF_ctrl(kctx, EVP_KDF_CTRL_SET_PBKDF2_PKCS5_MODE,
                                      1), 0)
          /* Small salts will pass if the "pkcs5" mode is enabled */
          || TEST_int_gt(EVP_KDF_ctrl(kctx, EVP_KDF_CTRL_SET_SALT,
                                      "123456781234567",
                                      (size_t)15), 0)
          /* A small iteration count will pass if "pkcs5" mode is enabled */
          || TEST_int_gt(EVP_KDF_ctrl(kctx, EVP_KDF_CTRL_SET_ITER, 1), 0)
          /*
           * If the "pkcs5" mode is disabled then the small salt and iter will
           * fail when the derive gets called.
           */
          || TEST_int_gt(EVP_KDF_ctrl(kctx, EVP_KDF_CTRL_SET_PBKDF2_PKCS5_MODE,
                                      0), 0)
          || TEST_int_eq(EVP_KDF_derive(kctx, out, sizeof(out)), 0);
#endif
    ret = 1;
err:
    FUNC0(kctx);
    return ret;
}