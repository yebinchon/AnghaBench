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
struct TYPE_7__ {scalar_t__ num; int len; scalar_t__ type; unsigned char* data; } ;
struct TYPE_6__ {scalar_t__ currpkt; int droprec; unsigned int epoch; unsigned int currrec; unsigned int dropepoch; scalar_t__ injected; int /*<<< orphan*/  pkts; } ;
typedef  TYPE_1__ MEMPACKET_TEST_CTX ;
typedef  TYPE_2__ MEMPACKET ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int DTLS1_RT_HEADER_LENGTH ; 
 size_t EPOCH_HI ; 
 size_t EPOCH_LO ; 
 scalar_t__ INJECT_PACKET_IGNORE_REC_SEQ ; 
 size_t RECORD_LEN_HI ; 
 size_t RECORD_LEN_LO ; 
 unsigned int RECORD_SEQUENCE ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(BIO *bio, char *out, int outl)
{
    MEMPACKET_TEST_CTX *ctx = FUNC1(bio);
    MEMPACKET *thispkt;
    unsigned char *rec;
    int rem;
    unsigned int seq, offset, len, epoch;

    FUNC0(bio);
    thispkt = FUNC7(ctx->pkts, 0);
    if (thispkt == NULL || thispkt->num != ctx->currpkt) {
        /* Probably run out of data */
        FUNC2(bio);
        return -1;
    }
    (void)FUNC6(ctx->pkts);
    ctx->currpkt++;

    if (outl > thispkt->len)
        outl = thispkt->len;

    if (thispkt->type != INJECT_PACKET_IGNORE_REC_SEQ
            && (ctx->injected || ctx->droprec >= 0)) {
        /*
         * Overwrite the record sequence number. We strictly number them in
         * the order received. Since we are actually a reliable transport
         * we know that there won't be any re-ordering. We overwrite to deal
         * with any packets that have been injected
         */
        for (rem = thispkt->len, rec = thispkt->data; rem > 0; rem -= len) {
            if (rem < DTLS1_RT_HEADER_LENGTH)
                return -1;
            epoch = (rec[EPOCH_HI] << 8) | rec[EPOCH_LO];
            if (epoch != ctx->epoch) {
                ctx->epoch = epoch;
                ctx->currrec = 0;
            }
            seq = ctx->currrec;
            offset = 0;
            do {
                rec[RECORD_SEQUENCE - offset] = seq & 0xFF;
                seq >>= 8;
                offset++;
            } while (seq > 0);

            len = ((rec[RECORD_LEN_HI] << 8) | rec[RECORD_LEN_LO])
                  + DTLS1_RT_HEADER_LENGTH;
            if (rem < (int)len)
                return -1;
            if (ctx->droprec == (int)ctx->currrec && ctx->dropepoch == epoch) {
                if (rem > (int)len)
                    FUNC4(rec, rec + len, rem - len);
                outl -= len;
                ctx->droprec = -1;
                if (outl == 0)
                    FUNC2(bio);
            } else {
                rec += len;
            }

            ctx->currrec++;
        }
    }

    FUNC3(out, thispkt->data, outl);
    FUNC5(thispkt);
    return outl;
}