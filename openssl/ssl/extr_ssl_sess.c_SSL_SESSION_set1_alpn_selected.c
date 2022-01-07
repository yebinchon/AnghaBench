
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t alpn_selected_len; int * alpn_selected; } ;
struct TYPE_5__ {TYPE_1__ ext; } ;
typedef TYPE_2__ SSL_SESSION ;


 int OPENSSL_free (int *) ;
 int * OPENSSL_memdup (unsigned char const*,size_t) ;

int SSL_SESSION_set1_alpn_selected(SSL_SESSION *s, const unsigned char *alpn,
                                   size_t len)
{
    OPENSSL_free(s->ext.alpn_selected);
    if (alpn == ((void*)0) || len == 0) {
        s->ext.alpn_selected = ((void*)0);
        s->ext.alpn_selected_len = 0;
        return 1;
    }
    s->ext.alpn_selected = OPENSSL_memdup(alpn, len);
    if (s->ext.alpn_selected == ((void*)0)) {
        s->ext.alpn_selected_len = 0;
        return 0;
    }
    s->ext.alpn_selected_len = len;

    return 1;
}
