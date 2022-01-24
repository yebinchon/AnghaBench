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
 int /*<<< orphan*/  RSA_F_RSA_PADDING_ADD_X931 ; 
 int /*<<< orphan*/  RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,int) ; 

int FUNC3(unsigned char *to, int tlen,
                         const unsigned char *from, int flen)
{
    int j;
    unsigned char *p;

    /*
     * Absolute minimum amount of padding is 1 header nibble, 1 padding
     * nibble and 2 trailer bytes: but 1 hash if is already in 'from'.
     */

    j = tlen - flen - 2;

    if (j < 0) {
        FUNC0(RSA_F_RSA_PADDING_ADD_X931, RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE);
        return -1;
    }

    p = (unsigned char *)to;

    /* If no padding start and end nibbles are in one byte */
    if (j == 0) {
        *p++ = 0x6A;
    } else {
        *p++ = 0x6B;
        if (j > 1) {
            FUNC2(p, 0xBB, j - 1);
            p += j - 1;
        }
        *p++ = 0xBA;
    }
    FUNC1(p, from, (unsigned int)flen);
    p += flen;
    *p = 0xCC;
    return 1;
}