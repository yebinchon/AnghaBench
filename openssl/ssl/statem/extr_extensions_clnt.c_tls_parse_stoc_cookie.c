
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_5__ {int tls13_cookie_len; int tls13_cookie; } ;
struct TYPE_6__ {TYPE_1__ ext; } ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;


 int PACKET_as_length_prefixed_2 (int *,int *) ;
 int PACKET_memdup (int *,int *,int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_F_TLS_PARSE_STOC_COOKIE ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;

int tls_parse_stoc_cookie(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                       size_t chainidx)
{
    PACKET cookie;

    if (!PACKET_as_length_prefixed_2(pkt, &cookie)
            || !PACKET_memdup(&cookie, &s->ext.tls13_cookie,
                              &s->ext.tls13_cookie_len)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_COOKIE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    return 1;
}
