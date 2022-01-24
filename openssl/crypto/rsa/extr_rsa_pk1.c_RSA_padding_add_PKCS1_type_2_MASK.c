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
 scalar_t__ FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  RSA_F_RSA_PADDING_ADD_PKCS1_TYPE_2 ; 
 int RSA_PKCS1_PADDING_SIZE ; 
 int /*<<< orphan*/  RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char const*,unsigned int) ; 

int FUNC3(unsigned char *to, int tlen,
                                 const unsigned char *from, int flen)
{
    int i, j;
    unsigned char *p;

    if (flen > (tlen - RSA_PKCS1_PADDING_SIZE)) {
        FUNC1(RSA_F_RSA_PADDING_ADD_PKCS1_TYPE_2,
               RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE);
        return 0;
    }

    p = (unsigned char *)to;

    *(p++) = 0;
    *(p++) = 2;                 /* Public Key BT (Block Type) */

    /* pad out with non-zero random data */
    j = tlen - 3 - flen;

    if (FUNC0(p, j) <= 0)
        return 0;
    for (i = 0; i < j; i++) {
        if (*p == '\0')
            do {
                if (FUNC0(p, 1) <= 0)
                    return 0;
            } while (*p == '\0');
        p++;
    }

    *(p++) = '\0';

    FUNC2(p, from, (unsigned int)flen);
    return 1;
}