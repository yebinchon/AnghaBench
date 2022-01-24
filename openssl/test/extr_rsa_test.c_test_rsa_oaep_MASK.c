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
typedef  int /*<<< orphan*/  ptext_ex ;
typedef  int /*<<< orphan*/  RSA ;

/* Variables and functions */
 int /*<<< orphan*/  RSA_PKCS1_OAEP_PADDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,unsigned char*,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,unsigned char*,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int,unsigned char*,int) ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ **,unsigned char*,int) ; 

__attribute__((used)) static int FUNC9(int idx)
{
    int ret = 0;
    RSA *key;
    unsigned char ptext[256];
    unsigned char ctext[256];
    static unsigned char ptext_ex[] = "\x54\x85\x9b\x34\x2c\x49\xea\x2a";
    unsigned char ctext_ex[256];
    int plen;
    int clen = 0;
    int num;
    int n;

    plen = sizeof(ptext_ex) - 1;
    clen = FUNC8(&key, ctext_ex, idx);

    num = FUNC2(plen, ptext_ex, ctext, key,
                             RSA_PKCS1_OAEP_PADDING);
    if (num == -1 && FUNC7()) {
        FUNC3("Skipping: No OAEP support");
        ret = 1;
        goto err;
    }
    if (!FUNC4(num, clen))
        goto err;

    num = FUNC1(num, ctext, ptext, key,
                              RSA_PKCS1_OAEP_PADDING);
    if (!FUNC6(ptext, num, ptext_ex, plen))
        goto err;

    /* Different ciphertexts. Try decrypting ctext_ex */
    num = FUNC1(clen, ctext_ex, ptext, key,
                              RSA_PKCS1_OAEP_PADDING);
    if (!FUNC6(ptext, num, ptext_ex, plen))
        goto err;

    /* Try decrypting corrupted ciphertexts. */
    for (n = 0; n < clen; ++n) {
        ctext[n] ^= 1;
        num = FUNC1(clen, ctext, ptext, key,
                                      RSA_PKCS1_OAEP_PADDING);
        if (!FUNC5(num, 0))
            goto err;
        ctext[n] ^= 1;
    }

    /* Test truncated ciphertexts, as well as negative length. */
    for (n = -1; n < clen; ++n) {
        num = FUNC1(n, ctext, ptext, key,
                                  RSA_PKCS1_OAEP_PADDING);
        if (!FUNC5(num, 0))
            goto err;
    }

    ret = 1;
err:
    FUNC0(key);
    return ret;
}