#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t lenbytes; scalar_t__ packet_len; scalar_t__ pwritten; struct TYPE_6__* parent; } ;
typedef  TYPE_1__ WPACKET_SUB ;
struct TYPE_7__ {scalar_t__ written; TYPE_1__* subs; } ;
typedef  TYPE_2__ WPACKET ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  SSL_F_WPACKET_START_SUB_PACKET_LEN__ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,size_t,unsigned char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(WPACKET *pkt, size_t lenbytes)
{
    WPACKET_SUB *sub;
    unsigned char *lenchars;

    /* Internal API, so should not fail */
    if (!FUNC3(pkt->subs != NULL))
        return 0;

    if ((sub = FUNC0(sizeof(*sub))) == NULL) {
        FUNC1(SSL_F_WPACKET_START_SUB_PACKET_LEN__, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    sub->parent = pkt->subs;
    pkt->subs = sub;
    sub->pwritten = pkt->written + lenbytes;
    sub->lenbytes = lenbytes;

    if (lenbytes == 0) {
        sub->packet_len = 0;
        return 1;
    }

    sub->packet_len = pkt->written;

    if (!FUNC2(pkt, lenbytes, &lenchars))
        return 0;

    return 1;
}