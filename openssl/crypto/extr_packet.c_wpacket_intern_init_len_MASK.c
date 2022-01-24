#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_4__* subs; scalar_t__ written; scalar_t__ curr; } ;
typedef  TYPE_1__ WPACKET ;
struct TYPE_7__ {size_t pwritten; size_t lenbytes; scalar_t__ packet_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_4__* FUNC1 (int) ; 
 int /*<<< orphan*/  SSL_F_WPACKET_INTERN_INIT_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t,unsigned char**) ; 

__attribute__((used)) static int FUNC4(WPACKET *pkt, size_t lenbytes)
{
    unsigned char *lenchars;

    pkt->curr = 0;
    pkt->written = 0;

    if ((pkt->subs = FUNC1(sizeof(*pkt->subs))) == NULL) {
        FUNC2(SSL_F_WPACKET_INTERN_INIT_LEN, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    if (lenbytes == 0)
        return 1;

    pkt->subs->pwritten = lenbytes;
    pkt->subs->lenbytes = lenbytes;

    if (!FUNC3(pkt, lenbytes, &lenchars)) {
        FUNC0(pkt->subs);
        pkt->subs = NULL;
        return 0;
    }
    pkt->subs->packet_len = 0;

    return 1;
}