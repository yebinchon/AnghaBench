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
typedef  int /*<<< orphan*/  expected ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  EVP_KDF_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  OSSL_KDF_NAME_TLS1_PRF ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_DIGEST ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SECRET ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SEED ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned char*,int,unsigned char const*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(void)
{
    int ret;
    EVP_KDF_CTX *kctx = NULL;
    unsigned char out[16];
    OSSL_PARAM params[4], *p = params;
    static const unsigned char expected[sizeof(out)] = {
        0x8e, 0x4d, 0x93, 0x25, 0x30, 0xd7, 0x65, 0xa0,
        0xaa, 0xe9, 0x74, 0xc3, 0x04, 0x73, 0x5e, 0xcc
    };

    *p++ = FUNC5(OSSL_KDF_PARAM_DIGEST,
                                            (char *)"sha256", sizeof("sha256"));
    *p++ = FUNC4(OSSL_KDF_PARAM_SECRET,
                                             (unsigned char *)"secret",
                                             (size_t)6);
    *p++ = FUNC4(OSSL_KDF_PARAM_SEED,
                                             (unsigned char *)"seed",
                                             (size_t)4);
    *p = FUNC3();

    ret =
        FUNC8(kctx = FUNC10(OSSL_KDF_NAME_TLS1_PRF))
        && FUNC9(FUNC1(kctx, params))
        && FUNC6(FUNC2(kctx, out, sizeof(out)), 0)
        && FUNC7(out, sizeof(out), expected, sizeof(expected));

    FUNC0(kctx);
    return ret;
}