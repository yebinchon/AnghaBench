
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rlayer; } ;
struct TYPE_5__ {int * buf; } ;
typedef TYPE_1__ SSL3_BUFFER ;
typedef TYPE_2__ SSL ;


 int OPENSSL_free (int *) ;
 TYPE_1__* RECORD_LAYER_get_rbuf (int *) ;

int ssl3_release_read_buffer(SSL *s)
{
    SSL3_BUFFER *b;

    b = RECORD_LAYER_get_rbuf(&s->rlayer);
    OPENSSL_free(b->buf);
    b->buf = ((void*)0);
    return 1;
}
