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
typedef  int /*<<< orphan*/  salt ;
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  expected ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVP_PKEY_HKDF ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,size_t,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC13(void)
{
    EVP_PKEY_CTX *pctx;
    unsigned char out[20];
    size_t outlen;
    int i, ret = 0;
    unsigned char salt[] = "0123456789";
    unsigned char key[] = "012345678901234567890123456789";
    unsigned char info[] = "infostring";
    const unsigned char expected[] = {
        0xe5, 0x07, 0x70, 0x7f, 0xc6, 0x78, 0xd6, 0x54, 0x32, 0x5f, 0x7e, 0xc5,
        0x7b, 0x59, 0x3e, 0xd8, 0x03, 0x6b, 0xed, 0xca
    };
    size_t expectedlen = sizeof(expected);

    if (!FUNC11(pctx = FUNC2(EVP_PKEY_HKDF, NULL)))
        goto done;

    /* We do this twice to test reuse of the EVP_PKEY_CTX */
    for (i = 0; i < 2; i++) {
        outlen = sizeof(out);
        FUNC12(out, 0, outlen);

        if (!FUNC9(FUNC7(pctx), 0)
                || !FUNC9(FUNC5(pctx, FUNC8()), 0)
                || !FUNC9(FUNC4(pctx, salt,
                                                            sizeof(salt) - 1), 0)
                || !FUNC9(FUNC3(pctx, key,
                                                           sizeof(key) - 1), 0)
                || !FUNC9(FUNC0(pctx, info,
                                                            sizeof(info) - 1), 0)
                || !FUNC9(FUNC6(pctx, out, &outlen), 0)
                || !FUNC10(out, outlen, expected, expectedlen))
            goto done;
    }

    ret = 1;

 done:
    FUNC1(pctx);

    return ret;
}