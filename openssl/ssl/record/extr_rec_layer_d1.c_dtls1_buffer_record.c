
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_11__ ;


struct TYPE_21__ {int q; } ;
typedef TYPE_2__ record_pqueue ;
struct TYPE_22__ {TYPE_5__* data; } ;
typedef TYPE_3__ pitem ;
struct TYPE_19__ {TYPE_5__* buf; } ;
struct TYPE_24__ {TYPE_11__ rbuf; int recordinfo; TYPE_11__ rrec; scalar_t__ packet_length; int * packet; } ;
struct TYPE_20__ {int rrec; int rbuf; scalar_t__ packet_length; int * packet; } ;
struct TYPE_23__ {TYPE_1__ rlayer; } ;
typedef int SSL3_RECORD ;
typedef int SSL3_BUFFER ;
typedef TYPE_4__ SSL ;
typedef TYPE_5__ DTLS1_RECORD_DATA ;


 int BIO_CTRL_DGRAM_SCTP_GET_RCVINFO ;
 int BIO_ctrl (int ,int ,int,int *) ;
 scalar_t__ BIO_dgram_is_sctp (int ) ;
 int ERR_R_INTERNAL_ERROR ;
 int OPENSSL_free (TYPE_5__*) ;
 TYPE_5__* OPENSSL_malloc (int) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_DTLS1_BUFFER_RECORD ;
 int SSL_get_rbio (TYPE_4__*) ;
 scalar_t__ SSL_get_state (TYPE_4__*) ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 scalar_t__ TLS_ST_CR_FINISHED ;
 scalar_t__ TLS_ST_SR_FINISHED ;
 int memcpy (TYPE_11__*,int *,int) ;
 int memset (int *,int ,int) ;
 int pitem_free (TYPE_3__*) ;
 TYPE_3__* pitem_new (unsigned char*,TYPE_5__*) ;
 int * pqueue_insert (int ,TYPE_3__*) ;
 int pqueue_size (int ) ;
 int ssl3_setup_buffers (TYPE_4__*) ;

int dtls1_buffer_record(SSL *s, record_pqueue *queue, unsigned char *priority)
{
    DTLS1_RECORD_DATA *rdata;
    pitem *item;


    if (pqueue_size(queue->q) >= 100)
        return 0;

    rdata = OPENSSL_malloc(sizeof(*rdata));
    item = pitem_new(priority, rdata);
    if (rdata == ((void*)0) || item == ((void*)0)) {
        OPENSSL_free(rdata);
        pitem_free(item);
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_DTLS1_BUFFER_RECORD,
                 ERR_R_INTERNAL_ERROR);
        return -1;
    }

    rdata->packet = s->rlayer.packet;
    rdata->packet_length = s->rlayer.packet_length;
    memcpy(&(rdata->rbuf), &s->rlayer.rbuf, sizeof(SSL3_BUFFER));
    memcpy(&(rdata->rrec), &s->rlayer.rrec, sizeof(SSL3_RECORD));

    item->data = rdata;



    if (BIO_dgram_is_sctp(SSL_get_rbio(s)) &&
        (SSL_get_state(s) == TLS_ST_SR_FINISHED
         || SSL_get_state(s) == TLS_ST_CR_FINISHED)) {
        BIO_ctrl(SSL_get_rbio(s), BIO_CTRL_DGRAM_SCTP_GET_RCVINFO,
                 sizeof(rdata->recordinfo), &rdata->recordinfo);
    }


    s->rlayer.packet = ((void*)0);
    s->rlayer.packet_length = 0;
    memset(&s->rlayer.rbuf, 0, sizeof(s->rlayer.rbuf));
    memset(&s->rlayer.rrec, 0, sizeof(s->rlayer.rrec));

    if (!ssl3_setup_buffers(s)) {

        OPENSSL_free(rdata->rbuf.buf);
        OPENSSL_free(rdata);
        pitem_free(item);
        return -1;
    }

    if (pqueue_insert(queue->q, item) == ((void*)0)) {

        OPENSSL_free(rdata->rbuf.buf);
        OPENSSL_free(rdata);
        pitem_free(item);
    }

    return 1;
}
