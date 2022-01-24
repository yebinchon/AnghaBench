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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_C2I_UINT64_INT ; 
 int /*<<< orphan*/  ASN1_R_TOO_LARGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 size_t FUNC2 (unsigned char*,int*,unsigned char const*,long) ; 

int FUNC3(uint64_t *ret, int *neg, const unsigned char **pp, long len)
{
    unsigned char buf[sizeof(uint64_t)];
    size_t buflen;

    buflen = FUNC2(NULL, NULL, *pp, len);
    if (buflen == 0)
        return 0;
    if (buflen > sizeof(uint64_t)) {
        FUNC0(ASN1_F_C2I_UINT64_INT, ASN1_R_TOO_LARGE);
        return 0;
    }
    (void)FUNC2(buf, neg, *pp, len);
    return FUNC1(ret, buf, buflen);
}