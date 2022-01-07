
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int len; unsigned int num; int type; struct TYPE_12__* data; } ;
struct TYPE_11__ {scalar_t__ duprec; int noinject; int injected; int lastpkt; int pkts; } ;
typedef TYPE_1__ MEMPACKET_TEST_CTX ;
typedef TYPE_2__ MEMPACKET ;
typedef int BIO ;


 TYPE_1__* BIO_get_data (int *) ;
 unsigned char const DTLS1_RT_HEADER_LENGTH ;
 TYPE_2__* OPENSSL_malloc (int) ;
 size_t RECORD_LEN_HI ;
 size_t RECORD_LEN_LO ;
 int TEST_ptr (TYPE_2__*) ;
 int memcpy (TYPE_2__*,char const*,int) ;
 int mempacket_free (TYPE_2__*) ;
 scalar_t__ sk_MEMPACKET_insert (int ,TYPE_2__*,int) ;
 int sk_MEMPACKET_push (int ,TYPE_2__*) ;
 TYPE_2__* sk_MEMPACKET_value (int ,int) ;

int mempacket_test_inject(BIO *bio, const char *in, int inl, int pktnum,
                          int type)
{
    MEMPACKET_TEST_CTX *ctx = BIO_get_data(bio);
    MEMPACKET *thispkt = ((void*)0), *looppkt, *nextpkt, *allpkts[3];
    int i, duprec;
    const unsigned char *inu = (const unsigned char *)in;
    size_t len = ((inu[RECORD_LEN_HI] << 8) | inu[RECORD_LEN_LO])
                 + DTLS1_RT_HEADER_LENGTH;

    if (ctx == ((void*)0))
        return -1;

    if ((size_t)inl < len)
        return -1;

    if ((size_t)inl == len)
        duprec = 0;
    else
        duprec = ctx->duprec > 0;


    if (duprec && pktnum != -1)
        return -1;


    if (pktnum >= 0) {
        if (ctx->noinject)
            return -1;
        ctx->injected = 1;
    } else {
        ctx->noinject = 1;
    }

    for (i = 0; i < (duprec ? 3 : 1); i++) {
        if (!TEST_ptr(allpkts[i] = OPENSSL_malloc(sizeof(*thispkt))))
            goto err;
        thispkt = allpkts[i];

        if (!TEST_ptr(thispkt->data = OPENSSL_malloc(inl)))
            goto err;







        if (duprec && i != 2) {
            memcpy(thispkt->data, in + len, inl - len);
            thispkt->len = inl - len;
        } else {
            memcpy(thispkt->data, in, inl);
            thispkt->len = inl;
        }
        thispkt->num = (pktnum >= 0) ? (unsigned int)pktnum : ctx->lastpkt + i;
        thispkt->type = type;
    }

    for(i = 0; (looppkt = sk_MEMPACKET_value(ctx->pkts, i)) != ((void*)0); i++) {

        if (looppkt->num > thispkt->num) {
            if (sk_MEMPACKET_insert(ctx->pkts, thispkt, i) == 0)
                goto err;

            if (pktnum >= 0)
                return inl;





            ctx->lastpkt++;
            do {
                i++;
                nextpkt = sk_MEMPACKET_value(ctx->pkts, i);
                if (nextpkt != ((void*)0) && nextpkt->num == ctx->lastpkt)
                    ctx->lastpkt++;
                else
                    return inl;
            } while(1);
        } else if (looppkt->num == thispkt->num) {
            if (!ctx->noinject) {

                goto err;
            }
            ctx->lastpkt++;
            thispkt->num++;
        }
    }




    for (i = 0; i < (duprec ? 3 : 1); i++) {
        thispkt = allpkts[i];
        if (!sk_MEMPACKET_push(ctx->pkts, thispkt))
            goto err;

        if (pktnum < 0)
            ctx->lastpkt++;
    }

    return inl;

 err:
    for (i = 0; i < (ctx->duprec > 0 ? 3 : 1); i++)
        mempacket_free(allpkts[i]);
    return -1;
}
