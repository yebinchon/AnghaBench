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
 int /*<<< orphan*/  CRYPTO_F_OPENSSL_BUF2HEXSTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ FUNC1 (char*,size_t,int /*<<< orphan*/ *,unsigned char const*,long) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 char* FUNC4 (int) ; 

char *FUNC5(const unsigned char *buf, long buflen)
{
    char *tmp;
    size_t tmp_n;

    if (buflen == 0)
        return FUNC4(1);

    tmp_n = buflen * 3;
    if ((tmp = FUNC3(tmp_n)) == NULL) {
        FUNC0(CRYPTO_F_OPENSSL_BUF2HEXSTR, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    if (FUNC1(tmp, tmp_n, NULL, buf, buflen))
        return tmp;
    FUNC2(tmp);
    return NULL;
}