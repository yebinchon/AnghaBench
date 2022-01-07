
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL ;
typedef int PACKET ;


 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_F_TLS_PARSE_CERTIFICATE_AUTHORITIES ;
 int SSL_R_BAD_EXTENSION ;
 int SSLfatal (int *,int ,int ,int ) ;
 int parse_ca_names (int *,int *) ;

__attribute__((used)) static int tls_parse_certificate_authorities(SSL *s, PACKET *pkt,
                                             unsigned int context, X509 *x,
                                             size_t chainidx)
{
    if (!parse_ca_names(s, pkt))
        return 0;
    if (PACKET_remaining(pkt) != 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_CERTIFICATE_AUTHORITIES, SSL_R_BAD_EXTENSION);
        return 0;
    }
    return 1;
}
