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
typedef  int /*<<< orphan*/  WPACKET ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,unsigned char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ID_INTEGER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,unsigned char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t) ; 

int FUNC8(WPACKET *pkt, const BIGNUM *n)
{
    unsigned char *bnbytes;
    size_t cont_len;

    if (FUNC1(n))
        return 0;

    /*
     * Calculate the ASN.1 INTEGER DER content length for n.
     * This is the number of whole bytes required to represent n (i.e. rounded
     * down), plus one.
     * If n is zero then the content is a single zero byte (length = 1).
     * If the number of bits of n is a multiple of 8 then an extra zero padding
     * byte is included to ensure that the value is still treated as positive
     * in the INTEGER two's complement representation.
     */
    cont_len = FUNC2(n) / 8 + 1;

    if (!FUNC6(pkt)
            || !FUNC5(pkt, ID_INTEGER)
            || !FUNC7(pkt, cont_len)
            || !FUNC3(pkt, cont_len, &bnbytes)
            || !FUNC4(pkt))
        return 0;

    if (bnbytes != NULL
            && FUNC0(n, bnbytes, (int)cont_len) != (int)cont_len)
        return 0;

    return 1;
}