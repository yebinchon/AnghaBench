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

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_F_OPENSSL_HEXSTR2BUF_EX ; 
 int /*<<< orphan*/  CRYPTO_R_ILLEGAL_HEX_DIGIT ; 
 int /*<<< orphan*/  CRYPTO_R_ODD_NUMBER_OF_DIGITS ; 
 int /*<<< orphan*/  CRYPTO_R_TOO_SMALL_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char) ; 

int FUNC2(unsigned char *buf, size_t buf_n, size_t *buflen,
                          const char *str)
{
    unsigned char *q;
    unsigned char ch, cl;
    int chi, cli;
    const unsigned char *p;
    size_t cnt;

    for (p = (const unsigned char *)str, q = buf, cnt = 0; *p; ) {
        ch = *p++;
        if (ch == ':')
            continue;
        cl = *p++;
        if (!cl) {
            FUNC0(CRYPTO_F_OPENSSL_HEXSTR2BUF_EX,
                      CRYPTO_R_ODD_NUMBER_OF_DIGITS);
            return 0;
        }
        cli = FUNC1(cl);
        chi = FUNC1(ch);
        if (cli < 0 || chi < 0) {
            FUNC0(CRYPTO_F_OPENSSL_HEXSTR2BUF_EX,
                      CRYPTO_R_ILLEGAL_HEX_DIGIT);
            return 0;
        }
        cnt++;
        if (q != NULL) {
            if (cnt > buf_n) {
                FUNC0(CRYPTO_F_OPENSSL_HEXSTR2BUF_EX,
                          CRYPTO_R_TOO_SMALL_BUFFER);
                return 0;
            }
            *q++ = (unsigned char)((chi << 4) | cli);
        }
    }

    if (buflen != NULL)
        *buflen = cnt;
    return 1;
}