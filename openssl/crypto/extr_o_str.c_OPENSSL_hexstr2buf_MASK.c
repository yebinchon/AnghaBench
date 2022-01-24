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
 int /*<<< orphan*/  CRYPTO_F_OPENSSL_HEXSTR2BUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (unsigned char*,size_t,size_t*,char const*) ; 
 unsigned char* FUNC3 (size_t) ; 
 int FUNC4 (char const*) ; 

unsigned char *FUNC5(const char *str, long *buflen)
{
    unsigned char *buf;
    size_t buf_n, tmp_buflen;

    buf_n = FUNC4(str) >> 1;
    if ((buf = FUNC3(buf_n)) == NULL) {
        FUNC0(CRYPTO_F_OPENSSL_HEXSTR2BUF, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    if (buflen != NULL)
        *buflen = 0;
    tmp_buflen = 0;
    if (FUNC2(buf, buf_n, &tmp_buflen, str)) {
        if (buflen != NULL)
            *buflen = (long)tmp_buflen;
        return buf;
    }
    FUNC1(buf);
    return NULL;
}