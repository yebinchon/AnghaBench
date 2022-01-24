#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int len; unsigned int num; int type; struct TYPE_12__* data; } ;
struct TYPE_11__ {scalar_t__ duprec; int noinject; int injected; int lastpkt; int /*<<< orphan*/  pkts; } ;
typedef  TYPE_1__ MEMPACKET_TEST_CTX ;
typedef  TYPE_2__ MEMPACKET ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned char const DTLS1_RT_HEADER_LENGTH ; 
 TYPE_2__* FUNC1 (int) ; 
 size_t RECORD_LEN_HI ; 
 size_t RECORD_LEN_LO ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int) ; 

int FUNC8(BIO *bio, const char *in, int inl, int pktnum,
                          int type)
{
    MEMPACKET_TEST_CTX *ctx = FUNC0(bio);
    MEMPACKET *thispkt = NULL, *looppkt, *nextpkt, *allpkts[3];
    int i, duprec;
    const unsigned char *inu = (const unsigned char *)in;
    size_t len = ((inu[RECORD_LEN_HI] << 8) | inu[RECORD_LEN_LO])
                 + DTLS1_RT_HEADER_LENGTH;

    if (ctx == NULL)
        return -1;

    if ((size_t)inl < len)
        return -1;

    if ((size_t)inl == len)
        duprec = 0;
    else
        duprec = ctx->duprec > 0;

    /* We don't support arbitrary injection when duplicating records */
    if (duprec && pktnum != -1)
        return -1;

    /* We only allow injection before we've started writing any data */
    if (pktnum >= 0) {
        if (ctx->noinject)
            return -1;
        ctx->injected  = 1;
    } else {
        ctx->noinject = 1;
    }

    for (i = 0; i < (duprec ? 3 : 1); i++) {
        if (!FUNC2(allpkts[i] = FUNC1(sizeof(*thispkt))))
            goto err;
        thispkt = allpkts[i];

        if (!FUNC2(thispkt->data = FUNC1(inl)))
            goto err;
        /*
         * If we are duplicating the packet, we duplicate it three times. The
         * first two times we drop the first record if there are more than one.
         * In this way we know that libssl will not be able to make progress
         * until it receives the last packet, and hence will be forced to
         * buffer these records.
         */
        if (duprec && i != 2) {
            FUNC3(thispkt->data, in + len, inl - len);
            thispkt->len = inl - len;
        } else {
            FUNC3(thispkt->data, in, inl);
            thispkt->len = inl;
        }
        thispkt->num = (pktnum >= 0) ? (unsigned int)pktnum : ctx->lastpkt + i;
        thispkt->type = type;
    }

    for(i = 0; (looppkt = FUNC7(ctx->pkts, i)) != NULL; i++) {
        /* Check if we found the right place to insert this packet */
        if (looppkt->num > thispkt->num) {
            if (FUNC5(ctx->pkts, thispkt, i) == 0)
                goto err;
            /* If we're doing up front injection then we're done */
            if (pktnum >= 0)
                return inl;
            /*
             * We need to do some accounting on lastpkt. We increment it first,
             * but it might now equal the value of injected packets, so we need
             * to skip over those
             */
            ctx->lastpkt++;
            do {
                i++;
                nextpkt = FUNC7(ctx->pkts, i);
                if (nextpkt != NULL && nextpkt->num == ctx->lastpkt)
                    ctx->lastpkt++;
                else
                    return inl;
            } while(1);
        } else if (looppkt->num == thispkt->num) {
            if (!ctx->noinject) {
                /* We injected two packets with the same packet number! */
                goto err;
            }
            ctx->lastpkt++;
            thispkt->num++;
        }
    }
    /*
     * We didn't find any packets with a packet number equal to or greater than
     * this one, so we just add it onto the end
     */
    for (i = 0; i < (duprec ? 3 : 1); i++) {
        thispkt = allpkts[i];
        if (!FUNC6(ctx->pkts, thispkt))
            goto err;

        if (pktnum < 0)
            ctx->lastpkt++;
    }

    return inl;

 err:
    for (i = 0; i < (ctx->duprec > 0 ? 3 : 1); i++)
        FUNC4(allpkts[i]);
    return -1;
}