
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* session; } ;
struct TYPE_5__ {int * psk_identity_hint; } ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;


 int ERR_R_INTERNAL_ERROR ;
 int OPENSSL_free (int *) ;
 int PACKET_get_length_prefixed_2 (int *,int *) ;
 scalar_t__ PACKET_remaining (int *) ;
 int PACKET_strndup (int *,int **) ;
 scalar_t__ PSK_MAX_IDENTITY_LEN ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PROCESS_SKE_PSK_PREAMBLE ;
 int SSL_R_DATA_LENGTH_TOO_LONG ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;

__attribute__((used)) static int tls_process_ske_psk_preamble(SSL *s, PACKET *pkt)
{

    PACKET psk_identity_hint;



    if (!PACKET_get_length_prefixed_2(pkt, &psk_identity_hint)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_SKE_PSK_PREAMBLE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }







    if (PACKET_remaining(&psk_identity_hint) > PSK_MAX_IDENTITY_LEN) {
        SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE,
                 SSL_F_TLS_PROCESS_SKE_PSK_PREAMBLE,
                 SSL_R_DATA_LENGTH_TOO_LONG);
        return 0;
    }

    if (PACKET_remaining(&psk_identity_hint) == 0) {
        OPENSSL_free(s->session->psk_identity_hint);
        s->session->psk_identity_hint = ((void*)0);
    } else if (!PACKET_strndup(&psk_identity_hint,
                               &s->session->psk_identity_hint)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_PSK_PREAMBLE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    return 1;





}
