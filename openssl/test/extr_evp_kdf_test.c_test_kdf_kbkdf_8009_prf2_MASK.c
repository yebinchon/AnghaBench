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
typedef  int /*<<< orphan*/  result ;
typedef  int /*<<< orphan*/  output ;
typedef  int /*<<< orphan*/  input_key ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  EVP_KDF_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_DIGEST ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_INFO ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_KEY ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_MAC ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SALT ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned char*,int,unsigned char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(void)
{
    int ret, i = 0;
    EVP_KDF_CTX *kctx;
    OSSL_PARAM params[6];
    char *label = "prf", *digest = "sha384", *prf_input = "test",
        *mac = "HMAC";
    static unsigned char input_key[] = {
        0x6D, 0x40, 0x4D, 0x37, 0xFA, 0xF7, 0x9F, 0x9D,
        0xF0, 0xD3, 0x35, 0x68, 0xD3, 0x20, 0x66, 0x98,
        0x00, 0xEB, 0x48, 0x36, 0x47, 0x2E, 0xA8, 0xA0,
        0x26, 0xD1, 0x6B, 0x71, 0x82, 0x46, 0x0C, 0x52,
    };
    static unsigned char output[] = {
        0x98, 0x01, 0xF6, 0x9A, 0x36, 0x8C, 0x2B, 0xF6,
        0x75, 0xE5, 0x95, 0x21, 0xE1, 0x77, 0xD9, 0xA0,
        0x7F, 0x67, 0xEF, 0xE1, 0xCF, 0xDE, 0x8D, 0x3C,
        0x8D, 0x6F, 0x6A, 0x02, 0x56, 0xE3, 0xB1, 0x7D,
        0xB3, 0xC1, 0xB6, 0x2A, 0xD1, 0xB8, 0x55, 0x33,
        0x60, 0xD1, 0x73, 0x67, 0xEB, 0x15, 0x14, 0xD2,
    };
    unsigned char result[sizeof(output)] = { 0 };

    params[i++] = FUNC5(
        OSSL_KDF_PARAM_DIGEST, digest, FUNC11(digest) + 1);
    params[i++] = FUNC5(
        OSSL_KDF_PARAM_MAC, mac, FUNC11(mac) + 1);
    params[i++] = FUNC4(
        OSSL_KDF_PARAM_KEY, input_key, sizeof(input_key));
    params[i++] = FUNC4(
        OSSL_KDF_PARAM_SALT, label, FUNC11(label));
    params[i++] = FUNC4(
        OSSL_KDF_PARAM_INFO, prf_input, FUNC11(prf_input));
    params[i] = FUNC3();

    kctx = FUNC10("KBKDF");
    ret = FUNC8(kctx)
        && FUNC9(FUNC1(kctx, params))
        && FUNC6(FUNC2(kctx, result, sizeof(result)), 0)
        && FUNC7(result, sizeof(result), output, sizeof(output));

    FUNC0(kctx);
    return ret;
}