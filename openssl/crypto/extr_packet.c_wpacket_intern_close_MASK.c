#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t pwritten; int flags; scalar_t__ lenbytes; scalar_t__ packet_len; int /*<<< orphan*/  parent; } ;
typedef  TYPE_1__ WPACKET_SUB ;
struct TYPE_8__ {size_t written; scalar_t__ curr; int /*<<< orphan*/  subs; } ;
typedef  TYPE_2__ WPACKET ;

/* Variables and functions */
 unsigned char* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int WPACKET_FLAGS_ABANDON_ON_ZERO_LENGTH ; 
 int WPACKET_FLAGS_NON_ZERO_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,size_t,scalar_t__) ; 

__attribute__((used)) static int FUNC3(WPACKET *pkt, WPACKET_SUB *sub, int doclose)
{
    size_t packlen = pkt->written - sub->pwritten;

    if (packlen == 0
            && (sub->flags & WPACKET_FLAGS_NON_ZERO_LENGTH) != 0)
        return 0;

    if (packlen == 0
            && sub->flags & WPACKET_FLAGS_ABANDON_ON_ZERO_LENGTH) {
        /* We can't handle this case. Return an error */
        if (!doclose)
            return 0;

        /* Deallocate any bytes allocated for the length of the WPACKET */
        if ((pkt->curr - sub->lenbytes) == sub->packet_len) {
            pkt->written -= sub->lenbytes;
            pkt->curr -= sub->lenbytes;
        }

        /* Don't write out the packet length */
        sub->packet_len = 0;
        sub->lenbytes = 0;
    }

    /* Write out the WPACKET length if needed */
    if (sub->lenbytes > 0) {
        unsigned char *buf = FUNC0(pkt);

        if (buf != NULL
                && !FUNC2(&buf[sub->packet_len], packlen,
                              sub->lenbytes))
            return 0;
    }

    if (doclose) {
        pkt->subs = sub->parent;
        FUNC1(sub);
    }

    return 1;
}