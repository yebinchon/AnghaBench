
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_4__ {scalar_t__ hello_retry_request; } ;
typedef TYPE_1__ SSL ;
typedef int PACKET ;


 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_F_TLS_PARSE_CTOS_EARLY_DATA ;
 scalar_t__ SSL_HRR_NONE ;
 int SSL_R_BAD_EXTENSION ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;

int tls_parse_ctos_early_data(SSL *s, PACKET *pkt, unsigned int context,
                              X509 *x, size_t chainidx)
{
    if (PACKET_remaining(pkt) != 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_CTOS_EARLY_DATA, SSL_R_BAD_EXTENSION);
        return 0;
    }

    if (s->hello_retry_request != SSL_HRR_NONE) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                 SSL_F_TLS_PARSE_CTOS_EARLY_DATA, SSL_R_BAD_EXTENSION);
        return 0;
    }

    return 1;
}
