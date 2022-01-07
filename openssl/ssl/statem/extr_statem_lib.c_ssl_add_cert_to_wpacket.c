
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int WPACKET ;
typedef int SSL ;


 int ERR_R_BUF_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_EXT_TLS1_3_CERTIFICATE ;
 int SSL_F_SSL_ADD_CERT_TO_WPACKET ;
 scalar_t__ SSL_IS_TLS13 (int *) ;
 int SSLfatal (int *,int ,int ,int ) ;
 int WPACKET_sub_allocate_bytes_u24 (int *,int,unsigned char**) ;
 int i2d_X509 (int *,unsigned char**) ;
 int tls_construct_extensions (int *,int *,int ,int *,int) ;

__attribute__((used)) static int ssl_add_cert_to_wpacket(SSL *s, WPACKET *pkt, X509 *x, int chain)
{
    int len;
    unsigned char *outbytes;

    len = i2d_X509(x, ((void*)0));
    if (len < 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_ADD_CERT_TO_WPACKET,
                 ERR_R_BUF_LIB);
        return 0;
    }
    if (!WPACKET_sub_allocate_bytes_u24(pkt, len, &outbytes)
            || i2d_X509(x, &outbytes) != len) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_ADD_CERT_TO_WPACKET,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (SSL_IS_TLS13(s)
            && !tls_construct_extensions(s, pkt, SSL_EXT_TLS1_3_CERTIFICATE, x,
                                         chain)) {

        return 0;
    }

    return 1;
}
