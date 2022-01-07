
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_6__ {int alpn_proposed_len; int * alpn_proposed; } ;
struct TYPE_7__ {TYPE_1__ s3; } ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;


 int ERR_R_INTERNAL_ERROR ;
 int OPENSSL_free (int *) ;
 int PACKET_as_length_prefixed_2 (int *,int *) ;
 int PACKET_get_length_prefixed_1 (int *,int *) ;
 int PACKET_memdup (int *,int **,int *) ;
 int PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PARSE_CTOS_ALPN ;
 int SSL_IS_FIRST_HANDSHAKE (TYPE_2__*) ;
 int SSL_R_BAD_EXTENSION ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;

int tls_parse_ctos_alpn(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                        size_t chainidx)
{
    PACKET protocol_list, save_protocol_list, protocol;

    if (!SSL_IS_FIRST_HANDSHAKE(s))
        return 1;

    if (!PACKET_as_length_prefixed_2(pkt, &protocol_list)
        || PACKET_remaining(&protocol_list) < 2) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_ALPN,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }

    save_protocol_list = protocol_list;
    do {

        if (!PACKET_get_length_prefixed_1(&protocol_list, &protocol)
                || PACKET_remaining(&protocol) == 0) {
            SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_ALPN,
                     SSL_R_BAD_EXTENSION);
            return 0;
        }
    } while (PACKET_remaining(&protocol_list) != 0);

    OPENSSL_free(s->s3.alpn_proposed);
    s->s3.alpn_proposed = ((void*)0);
    s->s3.alpn_proposed_len = 0;
    if (!PACKET_memdup(&save_protocol_list,
                       &s->s3.alpn_proposed, &s->s3.alpn_proposed_len)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_ALPN,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    return 1;
}
