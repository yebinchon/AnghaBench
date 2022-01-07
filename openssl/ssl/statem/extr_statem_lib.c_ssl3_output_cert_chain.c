
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPACKET ;
typedef int SSL ;
typedef int CERT_PKEY ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL3_OUTPUT_CERT_CHAIN ;
 int SSLfatal (int *,int ,int ,int ) ;
 int WPACKET_close (int *) ;
 int WPACKET_start_sub_packet_u24 (int *) ;
 int ssl_add_cert_chain (int *,int *,int *) ;

unsigned long ssl3_output_cert_chain(SSL *s, WPACKET *pkt, CERT_PKEY *cpk)
{
    if (!WPACKET_start_sub_packet_u24(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_OUTPUT_CERT_CHAIN,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (!ssl_add_cert_chain(s, pkt, cpk))
        return 0;

    if (!WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_OUTPUT_CERT_CHAIN,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    return 1;
}
