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
 int /*<<< orphan*/  ID_SEQUENCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t) ; 

int FUNC10(WPACKET *pkt, const BIGNUM *r, const BIGNUM *s)
{
    WPACKET tmppkt, *dummypkt;
    size_t cont_len;
    int isnull = FUNC5(pkt);

    if (!FUNC7(pkt))
        return 0;

    if (!isnull) {
        if (!FUNC4(&tmppkt, 0))
            return 0;
        dummypkt = &tmppkt;
    } else {
        /* If the input packet has a NULL buffer, we don't need a dummy packet */
        dummypkt = pkt;
    }

    /* Calculate the content length */
    if (!FUNC8(dummypkt, r)
            || !FUNC8(dummypkt, s)
            || !FUNC3(dummypkt, &cont_len)
            || (!isnull && !FUNC2(dummypkt))) {
        if (!isnull)
            FUNC0(dummypkt);
        return 0;
    }

    /* Add the tag and length bytes */
    if (!FUNC6(pkt, ID_SEQUENCE)
            || !FUNC9(pkt, cont_len)
               /*
                * Really encode the integers. We already wrote to the main pkt
                * if it had a NULL buffer, so don't do it again
                */
            || (!isnull && !FUNC8(pkt, r))
            || (!isnull && !FUNC8(pkt, s))
            || !FUNC1(pkt))
        return 0;

    return 1;
}