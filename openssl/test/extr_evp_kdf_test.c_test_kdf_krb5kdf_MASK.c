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
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  expected ;
typedef  int /*<<< orphan*/  constant ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  EVP_KDF_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  OSSL_KDF_NAME_KRB5KDF ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_CIPHER ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_CONSTANT ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_KEY ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned char*,int,unsigned char const*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(void)
{
    int ret;
    EVP_KDF_CTX *kctx;
    OSSL_PARAM params[4], *p = params;
    unsigned char out[16];
    static unsigned char key[] = {
        0x42, 0x26, 0x3C, 0x6E, 0x89, 0xF4, 0xFC, 0x28,
        0xB8, 0xDF, 0x68, 0xEE, 0x09, 0x79, 0x9F, 0x15
    };
    static unsigned char constant[] = {
        0x00, 0x00, 0x00, 0x02, 0x99
    };
    static const unsigned char expected[sizeof(out)] = {
        0x34, 0x28, 0x0A, 0x38, 0x2B, 0xC9, 0x27, 0x69,
        0xB2, 0xDA, 0x2F, 0x9E, 0xF0, 0x66, 0x85, 0x4B
    };

    *p++ = FUNC5(OSSL_KDF_PARAM_CIPHER,
                                            (char *)"AES-128-CBC",
                                            sizeof("AES-128-CBC"));
    *p++ = FUNC4(OSSL_KDF_PARAM_KEY, key,
                                             sizeof(key));
    *p++ = FUNC4(OSSL_KDF_PARAM_CONSTANT,
                                             constant, sizeof(constant));
    *p = FUNC3();

    ret =
        FUNC8(kctx = FUNC10(OSSL_KDF_NAME_KRB5KDF))
        && FUNC9(FUNC1(kctx, params))
        && FUNC6(FUNC2(kctx, out, sizeof(out)), 0)
        && FUNC7(out, sizeof(out), expected, sizeof(expected));

    FUNC0(kctx);
    return ret;
}