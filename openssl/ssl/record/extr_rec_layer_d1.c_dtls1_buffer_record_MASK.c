#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_11__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  q; } ;
typedef  TYPE_2__ record_pqueue ;
struct TYPE_22__ {TYPE_5__* data; } ;
typedef  TYPE_3__ pitem ;
struct TYPE_19__ {TYPE_5__* buf; } ;
struct TYPE_24__ {TYPE_11__ rbuf; int /*<<< orphan*/  recordinfo; TYPE_11__ rrec; scalar_t__ packet_length; int /*<<< orphan*/ * packet; } ;
struct TYPE_20__ {int /*<<< orphan*/  rrec; int /*<<< orphan*/  rbuf; scalar_t__ packet_length; int /*<<< orphan*/ * packet; } ;
struct TYPE_23__ {TYPE_1__ rlayer; } ;
typedef  int /*<<< orphan*/  SSL3_RECORD ;
typedef  int /*<<< orphan*/  SSL3_BUFFER ;
typedef  TYPE_4__ SSL ;
typedef  TYPE_5__ DTLS1_RECORD_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_CTRL_DGRAM_SCTP_GET_RCVINFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 TYPE_5__* FUNC3 (int) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_DTLS1_BUFFER_RECORD ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TLS_ST_CR_FINISHED ; 
 scalar_t__ TLS_ST_SR_FINISHED ; 
 int /*<<< orphan*/  FUNC7 (TYPE_11__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 TYPE_3__* FUNC10 (unsigned char*,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 

int FUNC14(SSL *s, record_pqueue *queue, unsigned char *priority)
{
    DTLS1_RECORD_DATA *rdata;
    pitem *item;

    /* Limit the size of the queue to prevent DOS attacks */
    if (FUNC12(queue->q) >= 100)
        return 0;

    rdata = FUNC3(sizeof(*rdata));
    item = FUNC10(priority, rdata);
    if (rdata == NULL || item == NULL) {
        FUNC2(rdata);
        FUNC9(item);
        FUNC6(s, SSL_AD_INTERNAL_ERROR, SSL_F_DTLS1_BUFFER_RECORD,
                 ERR_R_INTERNAL_ERROR);
        return -1;
    }

    rdata->packet = s->rlayer.packet;
    rdata->packet_length = s->rlayer.packet_length;
    FUNC7(&(rdata->rbuf), &s->rlayer.rbuf, sizeof(SSL3_BUFFER));
    FUNC7(&(rdata->rrec), &s->rlayer.rrec, sizeof(SSL3_RECORD));

    item->data = rdata;

#ifndef OPENSSL_NO_SCTP
    /* Store bio_dgram_sctp_rcvinfo struct */
    if (FUNC1(FUNC4(s)) &&
        (FUNC5(s) == TLS_ST_SR_FINISHED
         || FUNC5(s) == TLS_ST_CR_FINISHED)) {
        FUNC0(FUNC4(s), BIO_CTRL_DGRAM_SCTP_GET_RCVINFO,
                 sizeof(rdata->recordinfo), &rdata->recordinfo);
    }
#endif

    s->rlayer.packet = NULL;
    s->rlayer.packet_length = 0;
    FUNC8(&s->rlayer.rbuf, 0, sizeof(s->rlayer.rbuf));
    FUNC8(&s->rlayer.rrec, 0, sizeof(s->rlayer.rrec));

    if (!FUNC13(s)) {
        /* SSLfatal() already called */
        FUNC2(rdata->rbuf.buf);
        FUNC2(rdata);
        FUNC9(item);
        return -1;
    }

    if (FUNC11(queue->q, item) == NULL) {
        /* Must be a duplicate so ignore it */
        FUNC2(rdata->rbuf.buf);
        FUNC2(rdata);
        FUNC9(item);
    }

    return 1;
}