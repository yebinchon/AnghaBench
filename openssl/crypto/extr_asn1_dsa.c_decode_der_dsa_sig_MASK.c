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
 unsigned int ID_SEQUENCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 unsigned char const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

size_t FUNC6(BIGNUM *r, BIGNUM *s, const unsigned char **ppin,
                          size_t len)
{
    size_t consumed;
    PACKET pkt, contpkt;
    unsigned int tag;

    if (!FUNC0(&pkt, *ppin, len)
            || !FUNC2(&pkt, &tag)
            || tag != ID_SEQUENCE
            || !FUNC5(&pkt, &contpkt)
            || !FUNC4(&contpkt, r)
            || !FUNC4(&contpkt, s)
            || FUNC3(&contpkt) != 0)
        return 0;

    consumed = FUNC1(&pkt) - *ppin;
    *ppin += consumed;
    return consumed;
}