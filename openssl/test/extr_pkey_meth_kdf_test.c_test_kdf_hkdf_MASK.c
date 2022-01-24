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
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVP_PKEY_HKDF ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int,unsigned char const*,int) ; 

__attribute__((used)) static int FUNC11(void)
{
    int ret = 0;
    EVP_PKEY_CTX *pctx;
    unsigned char out[10];
    size_t outlen = sizeof(out);

    if ((pctx = FUNC2(EVP_PKEY_HKDF, NULL)) == NULL) {
        FUNC9("EVP_PKEY_HKDF");
        goto err;
    }
    if (FUNC7(pctx) <= 0) {
        FUNC9("EVP_PKEY_derive_init");
        goto err;
    }
    if (FUNC5(pctx, FUNC8()) <= 0) {
        FUNC9("EVP_PKEY_CTX_set_hkdf_md");
        goto err;
    }
    if (FUNC4(pctx, "salt", 4) <= 0) {
        FUNC9("EVP_PKEY_CTX_set1_hkdf_salt");
        goto err;
    }
    if (FUNC3(pctx, "secret", 6) <= 0) {
        FUNC9("EVP_PKEY_CTX_set1_hkdf_key");
        goto err;
    }
    if (FUNC0(pctx, "label", 5) <= 0) {
        FUNC9("EVP_PKEY_CTX_set1_hkdf_info");
        goto err;
    }
    if (FUNC6(pctx, out, &outlen) <= 0) {
        FUNC9("EVP_PKEY_derive");
        goto err;
    }

    {
        const unsigned char expected[sizeof(out)] = {
            0x2a, 0xc4, 0x36, 0x9f, 0x52, 0x59, 0x96, 0xf8, 0xde, 0x13
        };
        if (!FUNC10(out, sizeof(out), expected, sizeof(expected))) {
            goto err;
        }
    }
    ret = 1;
err:
    FUNC1(pctx);
    return ret;
}