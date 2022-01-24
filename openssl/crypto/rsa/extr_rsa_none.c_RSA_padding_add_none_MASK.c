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
 int /*<<< orphan*/  RSA_F_RSA_PADDING_ADD_NONE ; 
 int /*<<< orphan*/  RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE ; 
 int /*<<< orphan*/  RSA_R_DATA_TOO_SMALL_FOR_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,unsigned int) ; 

int FUNC2(unsigned char *to, int tlen,
                         const unsigned char *from, int flen)
{
    if (flen > tlen) {
        FUNC0(RSA_F_RSA_PADDING_ADD_NONE, RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE);
        return 0;
    }

    if (flen < tlen) {
        FUNC0(RSA_F_RSA_PADDING_ADD_NONE, RSA_R_DATA_TOO_SMALL_FOR_KEY_SIZE);
        return 0;
    }

    FUNC1(to, from, (unsigned int)flen);
    return 1;
}