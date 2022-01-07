
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ num; int len; scalar_t__ type; unsigned char* data; } ;
struct TYPE_6__ {scalar_t__ currpkt; int droprec; unsigned int epoch; unsigned int currrec; unsigned int dropepoch; scalar_t__ injected; int pkts; } ;
typedef TYPE_1__ MEMPACKET_TEST_CTX ;
typedef TYPE_2__ MEMPACKET ;
typedef int BIO ;


 int BIO_clear_retry_flags (int *) ;
 TYPE_1__* BIO_get_data (int *) ;
 int BIO_set_retry_read (int *) ;
 int DTLS1_RT_HEADER_LENGTH ;
 size_t EPOCH_HI ;
 size_t EPOCH_LO ;
 scalar_t__ INJECT_PACKET_IGNORE_REC_SEQ ;
 size_t RECORD_LEN_HI ;
 size_t RECORD_LEN_LO ;
 unsigned int RECORD_SEQUENCE ;
 int memcpy (char*,unsigned char*,int) ;
 int memmove (unsigned char*,unsigned char*,int) ;
 int mempacket_free (TYPE_2__*) ;
 int sk_MEMPACKET_shift (int ) ;
 TYPE_2__* sk_MEMPACKET_value (int ,int ) ;

__attribute__((used)) static int mempacket_test_read(BIO *bio, char *out, int outl)
{
    MEMPACKET_TEST_CTX *ctx = BIO_get_data(bio);
    MEMPACKET *thispkt;
    unsigned char *rec;
    int rem;
    unsigned int seq, offset, len, epoch;

    BIO_clear_retry_flags(bio);
    thispkt = sk_MEMPACKET_value(ctx->pkts, 0);
    if (thispkt == ((void*)0) || thispkt->num != ctx->currpkt) {

        BIO_set_retry_read(bio);
        return -1;
    }
    (void)sk_MEMPACKET_shift(ctx->pkts);
    ctx->currpkt++;

    if (outl > thispkt->len)
        outl = thispkt->len;

    if (thispkt->type != INJECT_PACKET_IGNORE_REC_SEQ
            && (ctx->injected || ctx->droprec >= 0)) {






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
                    memmove(rec, rec + len, rem - len);
                outl -= len;
                ctx->droprec = -1;
                if (outl == 0)
                    BIO_set_retry_read(bio);
            } else {
                rec += len;
            }

            ctx->currrec++;
        }
    }

    memcpy(out, thispkt->data, outl);
    mempacket_free(thispkt);
    return outl;
}
