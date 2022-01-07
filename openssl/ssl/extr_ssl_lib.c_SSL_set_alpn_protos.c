
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int alpn_len; int * alpn; } ;
struct TYPE_5__ {TYPE_1__ ext; } ;
typedef TYPE_2__ SSL ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_memdup (unsigned char const*,unsigned int) ;
 int SSL_F_SSL_SET_ALPN_PROTOS ;
 int SSLerr (int ,int ) ;

int SSL_set_alpn_protos(SSL *ssl, const unsigned char *protos,
                        unsigned int protos_len)
{
    OPENSSL_free(ssl->ext.alpn);
    ssl->ext.alpn = OPENSSL_memdup(protos, protos_len);
    if (ssl->ext.alpn == ((void*)0)) {
        SSLerr(SSL_F_SSL_SET_ALPN_PROTOS, ERR_R_MALLOC_FAILURE);
        return 1;
    }
    ssl->ext.alpn_len = protos_len;

    return 0;
}
