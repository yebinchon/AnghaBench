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
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 unsigned int ID_INTEGER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(PACKET *pkt, BIGNUM *n)
{
    PACKET contpkt, tmppkt;
    unsigned int tag, tmp;

    /* Check we have an integer and get the content bytes */
    if (!FUNC2(pkt, &tag)
            || tag != ID_INTEGER
            || !FUNC4(pkt, &contpkt))
        return 0;

    /* Peek ahead at the first bytes to check for proper encoding */
    tmppkt = contpkt;
    /* The INTEGER must be positive */
    if (!FUNC2(&tmppkt, &tmp)
            || (tmp & 0x80) != 0)
        return 0;
    /* If there a zero padding byte the next byte must have the msb set */
    if (FUNC3(&tmppkt) > 0 && tmp == 0) {
        if (!FUNC2(&tmppkt, &tmp)
                || (tmp & 0x80) == 0)
            return 0;
    }

    if (FUNC0(FUNC1(&contpkt),
                  (int)FUNC3(&contpkt), n) == NULL)
        return 0;

    return 1;
}