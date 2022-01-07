
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ version; scalar_t__ hit; scalar_t__ server; } ;
typedef TYPE_1__ SSL ;


 scalar_t__ SSL3_VERSION ;
 unsigned int SSL_EXT_CLIENT_HELLO ;
 unsigned int SSL_EXT_IGNORE_ON_RESUMPTION ;
 unsigned int SSL_EXT_SSL3_ALLOWED ;
 unsigned int SSL_EXT_TLS1_2_AND_BELOW_ONLY ;
 unsigned int SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST ;
 unsigned int SSL_EXT_TLS1_3_ONLY ;
 unsigned int SSL_EXT_TLS_IMPLEMENTATION_ONLY ;
 scalar_t__ SSL_IS_DTLS (TYPE_1__*) ;
 int SSL_IS_TLS13 (TYPE_1__*) ;

int extension_is_relevant(SSL *s, unsigned int extctx, unsigned int thisctx)
{
    int is_tls13;





    if ((thisctx & SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST) != 0)
        is_tls13 = 1;
    else
        is_tls13 = SSL_IS_TLS13(s);

    if ((SSL_IS_DTLS(s)
                && (extctx & SSL_EXT_TLS_IMPLEMENTATION_ONLY) != 0)
            || (s->version == SSL3_VERSION
                    && (extctx & SSL_EXT_SSL3_ALLOWED) == 0)
            || (is_tls13 && (extctx & SSL_EXT_TLS1_2_AND_BELOW_ONLY) != 0)
            || (!is_tls13 && (extctx & SSL_EXT_TLS1_3_ONLY) != 0
                && (thisctx & SSL_EXT_CLIENT_HELLO) == 0)
            || (s->server && !is_tls13 && (extctx & SSL_EXT_TLS1_3_ONLY) != 0)
            || (s->hit && (extctx & SSL_EXT_IGNORE_ON_RESUMPTION) != 0))
        return 0;
    return 1;
}
