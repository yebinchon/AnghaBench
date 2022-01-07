
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int pqueue ;
struct TYPE_17__ {scalar_t__ data; } ;
typedef TYPE_5__ pitem ;
struct TYPE_13__ {scalar_t__ buf; } ;
struct TYPE_20__ {TYPE_1__ rbuf; } ;
struct TYPE_16__ {int * q; } ;
struct TYPE_15__ {int * q; } ;
struct TYPE_14__ {int * q; } ;
struct TYPE_19__ {TYPE_4__ buffered_app_data; TYPE_3__ processed_rcds; TYPE_2__ unprocessed_rcds; } ;
struct TYPE_18__ {TYPE_7__* d; } ;
typedef TYPE_6__ RECORD_LAYER ;
typedef TYPE_7__ DTLS_RECORD_LAYER ;
typedef TYPE_8__ DTLS1_RECORD_DATA ;


 int OPENSSL_free (scalar_t__) ;
 int memset (TYPE_7__*,int ,int) ;
 int pitem_free (TYPE_5__*) ;
 TYPE_5__* pqueue_pop (int *) ;

void DTLS_RECORD_LAYER_clear(RECORD_LAYER *rl)
{
    DTLS_RECORD_LAYER *d;
    pitem *item = ((void*)0);
    DTLS1_RECORD_DATA *rdata;
    pqueue *unprocessed_rcds;
    pqueue *processed_rcds;
    pqueue *buffered_app_data;

    d = rl->d;

    while ((item = pqueue_pop(d->unprocessed_rcds.q)) != ((void*)0)) {
        rdata = (DTLS1_RECORD_DATA *)item->data;
        OPENSSL_free(rdata->rbuf.buf);
        OPENSSL_free(item->data);
        pitem_free(item);
    }

    while ((item = pqueue_pop(d->processed_rcds.q)) != ((void*)0)) {
        rdata = (DTLS1_RECORD_DATA *)item->data;
        OPENSSL_free(rdata->rbuf.buf);
        OPENSSL_free(item->data);
        pitem_free(item);
    }

    while ((item = pqueue_pop(d->buffered_app_data.q)) != ((void*)0)) {
        rdata = (DTLS1_RECORD_DATA *)item->data;
        OPENSSL_free(rdata->rbuf.buf);
        OPENSSL_free(item->data);
        pitem_free(item);
    }

    unprocessed_rcds = d->unprocessed_rcds.q;
    processed_rcds = d->processed_rcds.q;
    buffered_app_data = d->buffered_app_data.q;
    memset(d, 0, sizeof(*d));
    d->unprocessed_rcds.q = unprocessed_rcds;
    d->processed_rcds.q = processed_rcds;
    d->buffered_app_data.q = buffered_app_data;
}
