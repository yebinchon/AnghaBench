
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* d; } ;
struct TYPE_12__ {TYPE_3__ rlayer; } ;
struct TYPE_11__ {unsigned long epoch; scalar_t__ type; } ;
struct TYPE_8__ {scalar_t__ epoch; } ;
struct TYPE_9__ {unsigned long r_epoch; int next_bitmap; TYPE_1__ unprocessed_rcds; int bitmap; } ;
typedef TYPE_4__ SSL3_RECORD ;
typedef TYPE_5__ SSL ;
typedef int DTLS1_BITMAP ;


 scalar_t__ SSL3_RT_ALERT ;
 scalar_t__ SSL3_RT_HANDSHAKE ;

DTLS1_BITMAP *dtls1_get_bitmap(SSL *s, SSL3_RECORD *rr,
                               unsigned int *is_next_epoch)
{

    *is_next_epoch = 0;


    if (rr->epoch == s->rlayer.d->r_epoch)
        return &s->rlayer.d->bitmap;






    else if (rr->epoch == (unsigned long)(s->rlayer.d->r_epoch + 1) &&
             s->rlayer.d->unprocessed_rcds.epoch != s->rlayer.d->r_epoch &&
             (rr->type == SSL3_RT_HANDSHAKE || rr->type == SSL3_RT_ALERT)) {
        *is_next_epoch = 1;
        return &s->rlayer.d->next_bitmap;
    }

    return ((void*)0);
}
