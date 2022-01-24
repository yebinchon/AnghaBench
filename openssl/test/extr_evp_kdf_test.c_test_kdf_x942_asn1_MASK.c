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
typedef  int /*<<< orphan*/  z ;
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  expected ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  EVP_KDF_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  OSSL_KDF_NAME_X942KDF ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_CEK_ALG ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_DIGEST ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_KEY ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 char* SN_id_smime_alg_CMS3DESwrap ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned char*,int,unsigned char const*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (char const*) ; 

__attribute__((used)) static int FUNC12(void)
{
    int ret;
    EVP_KDF_CTX *kctx = NULL;
    OSSL_PARAM params[4], *p = params;
    const char *cek_alg = SN_id_smime_alg_CMS3DESwrap;
    unsigned char out[24];
    /* RFC2631 Section 2.1.6 Test data */
    static unsigned char z[] = {
        0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,
        0x0e,0x0f,0x10,0x11,0x12,0x13
    };
    static const unsigned char expected[sizeof(out)] = {
        0xa0,0x96,0x61,0x39,0x23,0x76,0xf7,0x04,
        0x4d,0x90,0x52,0xa3,0x97,0x88,0x32,0x46,
        0xb6,0x7f,0x5f,0x1e,0xf6,0x3e,0xb5,0xfb
    };

    *p++ = FUNC5(OSSL_KDF_PARAM_DIGEST,
                                            (char *)"sha1", sizeof("sha1"));
    *p++ = FUNC4(OSSL_KDF_PARAM_KEY, z,
                                             sizeof(z));
    *p++ = FUNC5(OSSL_KDF_PARAM_CEK_ALG,
                                            (char *)cek_alg,
                                            FUNC11(cek_alg) + 1);
    *p = FUNC3();

    ret =
        FUNC8(kctx = FUNC10(OSSL_KDF_NAME_X942KDF))
        && FUNC9(FUNC1(kctx, params))
        && FUNC6(FUNC2(kctx, out, sizeof(out)), 0)
        && FUNC7(out, sizeof(out), expected, sizeof(expected));

    FUNC0(kctx);
    return ret;
}