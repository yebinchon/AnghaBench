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
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVP_PKEY_TLS1_PRF ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int,unsigned char const*,int) ; 

__attribute__((used)) static int FUNC10(void)
{
    int ret = 0;
    EVP_PKEY_CTX *pctx;
    unsigned char out[16];
    size_t outlen = sizeof(out);

    if ((pctx = FUNC2(EVP_PKEY_TLS1_PRF, NULL)) == NULL) {
        FUNC8("EVP_PKEY_TLS1_PRF");
        goto err;
    }
    if (FUNC6(pctx) <= 0) {
        FUNC8("EVP_PKEY_derive_init");
        goto err;
    }
    if (FUNC4(pctx, FUNC7()) <= 0) {
        FUNC8("EVP_PKEY_CTX_set_tls1_prf_md");
        goto err;
    }
    if (FUNC3(pctx, "secret", 6) <= 0) {
        FUNC8("EVP_PKEY_CTX_set1_tls1_prf_secret");
        goto err;
    }
    if (FUNC0(pctx, "seed", 4) <= 0) {
        FUNC8("EVP_PKEY_CTX_add1_tls1_prf_seed");
        goto err;
    }
    if (FUNC5(pctx, out, &outlen) <= 0) {
        FUNC8("EVP_PKEY_derive");
        goto err;
    }

    {
        const unsigned char expected[sizeof(out)] = {
            0x8e, 0x4d, 0x93, 0x25, 0x30, 0xd7, 0x65, 0xa0,
            0xaa, 0xe9, 0x74, 0xc3, 0x04, 0x73, 0x5e, 0xcc
        };
        if (!FUNC9(out, sizeof(out), expected, sizeof(expected))) {
            goto err;
        }
    }
    ret = 1;
err:
    FUNC1(pctx);
    return ret;
}