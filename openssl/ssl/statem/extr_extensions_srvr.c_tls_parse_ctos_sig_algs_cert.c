
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_5__ {int hit; } ;
typedef TYPE_1__ SSL ;
typedef int PACKET ;


 int PACKET_as_length_prefixed_2 (int *,int *) ;
 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_F_TLS_PARSE_CTOS_SIG_ALGS_CERT ;
 int SSL_R_BAD_EXTENSION ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;
 int tls1_save_sigalgs (TYPE_1__*,int *,int) ;

int tls_parse_ctos_sig_algs_cert(SSL *s, PACKET *pkt, unsigned int context,
                                 X509 *x, size_t chainidx)
{
    PACKET supported_sig_algs;

    if (!PACKET_as_length_prefixed_2(pkt, &supported_sig_algs)
            || PACKET_remaining(&supported_sig_algs) == 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_CTOS_SIG_ALGS_CERT, SSL_R_BAD_EXTENSION);
        return 0;
    }

    if (!s->hit && !tls1_save_sigalgs(s, &supported_sig_algs, 1)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_CTOS_SIG_ALGS_CERT, SSL_R_BAD_EXTENSION);
        return 0;
    }

    return 1;
}
