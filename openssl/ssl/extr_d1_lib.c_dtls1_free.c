
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int sent_messages; int buffered_messages; } ;
struct TYPE_6__ {TYPE_5__* d1; int rlayer; } ;
typedef TYPE_1__ SSL ;


 int DTLS_RECORD_LAYER_free (int *) ;
 int OPENSSL_free (TYPE_5__*) ;
 int dtls1_clear_queues (TYPE_1__*) ;
 int pqueue_free (int ) ;
 int ssl3_free (TYPE_1__*) ;

void dtls1_free(SSL *s)
{
    DTLS_RECORD_LAYER_free(&s->rlayer);

    ssl3_free(s);

    dtls1_clear_queues(s);

    pqueue_free(s->d1->buffered_messages);
    pqueue_free(s->d1->sent_messages);

    OPENSSL_free(s->d1);
    s->d1 = ((void*)0);
}
