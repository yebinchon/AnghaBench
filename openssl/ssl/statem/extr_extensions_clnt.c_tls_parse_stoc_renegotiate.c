
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_5__ {size_t previous_client_finished_len; size_t previous_server_finished_len; int send_connection_binding; int previous_server_finished; int previous_client_finished; } ;
struct TYPE_6__ {TYPE_1__ s3; } ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;


 int ERR_R_INTERNAL_ERROR ;
 int PACKET_get_1_len (int *,size_t*) ;
 int PACKET_get_bytes (int *,unsigned char const**,scalar_t__) ;
 size_t PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PARSE_STOC_RENEGOTIATE ;
 int SSL_R_RENEGOTIATION_ENCODING_ERR ;
 int SSL_R_RENEGOTIATION_MISMATCH ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 scalar_t__ memcmp (unsigned char const*,int ,scalar_t__) ;
 int ossl_assert (int) ;

int tls_parse_stoc_renegotiate(SSL *s, PACKET *pkt, unsigned int context,
                               X509 *x, size_t chainidx)
{
    size_t expected_len = s->s3.previous_client_finished_len
        + s->s3.previous_server_finished_len;
    size_t ilen;
    const unsigned char *data;


    if (!ossl_assert(expected_len == 0
                     || s->s3.previous_client_finished_len != 0)
        || !ossl_assert(expected_len == 0
                        || s->s3.previous_server_finished_len != 0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_RENEGOTIATE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }


    if (!PACKET_get_1_len(pkt, &ilen)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_RENEGOTIATE,
                 SSL_R_RENEGOTIATION_ENCODING_ERR);
        return 0;
    }


    if (PACKET_remaining(pkt) != ilen) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_RENEGOTIATE,
                 SSL_R_RENEGOTIATION_ENCODING_ERR);
        return 0;
    }


    if (ilen != expected_len) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_STOC_RENEGOTIATE,
                 SSL_R_RENEGOTIATION_MISMATCH);
        return 0;
    }

    if (!PACKET_get_bytes(pkt, &data, s->s3.previous_client_finished_len)
        || memcmp(data, s->s3.previous_client_finished,
                  s->s3.previous_client_finished_len) != 0) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_STOC_RENEGOTIATE,
                 SSL_R_RENEGOTIATION_MISMATCH);
        return 0;
    }

    if (!PACKET_get_bytes(pkt, &data, s->s3.previous_server_finished_len)
        || memcmp(data, s->s3.previous_server_finished,
                  s->s3.previous_server_finished_len) != 0) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_STOC_RENEGOTIATE,
                 SSL_R_RENEGOTIATION_MISMATCH);
        return 0;
    }
    s->s3.send_connection_binding = 1;

    return 1;
}
