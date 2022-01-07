
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t numwpipes; } ;
struct TYPE_7__ {TYPE_5__ rlayer; int * wbio; } ;
struct TYPE_6__ {int * buf; } ;
typedef TYPE_1__ SSL3_BUFFER ;
typedef TYPE_2__ SSL ;


 int BIO_get_ktls_send (int *) ;
 int OPENSSL_free (int *) ;
 TYPE_1__* RECORD_LAYER_get_wbuf (TYPE_5__*) ;

int ssl3_release_write_buffer(SSL *s)
{
    SSL3_BUFFER *wb;
    size_t pipes;

    pipes = s->rlayer.numwpipes;
    while (pipes > 0) {
        wb = &RECORD_LAYER_get_wbuf(&s->rlayer)[pipes - 1];

        if (s->wbio == ((void*)0) || !BIO_get_ktls_send(s->wbio))
            OPENSSL_free(wb->buf);
        wb->buf = ((void*)0);
        pipes--;
    }
    s->rlayer.numwpipes = 0;
    return 1;
}
