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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

int FUNC4(PACKET *pkt, PACKET *subpkt)
{
    unsigned int byte;

    if (!FUNC0(pkt, &byte))
        return 0;

    if (byte < 0x80)
        return FUNC3(pkt, subpkt, (size_t)byte);
    if (byte == 0x81)
        return FUNC1(pkt, subpkt);
    if (byte == 0x82)
        return FUNC2(pkt, subpkt);

    /* Too large, invalid, or not DER. */
    return 0;
}