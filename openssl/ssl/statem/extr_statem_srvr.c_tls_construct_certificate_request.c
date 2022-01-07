
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint16_t ;
typedef int WPACKET ;
struct TYPE_15__ {int cert_request; } ;
struct TYPE_16__ {TYPE_1__ tmp; } ;
struct TYPE_17__ {scalar_t__ post_handshake_auth; int pha_context_len; TYPE_2__ s3; int certreqs_sent; int * pha_context; } ;
typedef TYPE_3__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_malloc (int) ;
 scalar_t__ RAND_bytes (int *,int) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_EXT_TLS1_3_CERTIFICATE_REQUEST ;
 int SSL_F_TLS_CONSTRUCT_CERTIFICATE_REQUEST ;
 scalar_t__ SSL_IS_TLS13 (TYPE_3__*) ;
 scalar_t__ SSL_PHA_REQUEST_PENDING ;
 scalar_t__ SSL_USE_SIGALGS (TYPE_3__*) ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int WPACKET_FLAGS_NON_ZERO_LENGTH ;
 int WPACKET_close (int *) ;
 int WPACKET_put_bytes_u8 (int *,int ) ;
 int WPACKET_set_flags (int *,int ) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int WPACKET_start_sub_packet_u8 (int *) ;
 int WPACKET_sub_memcpy_u8 (int *,int *,int) ;
 int construct_ca_names (TYPE_3__*,int ,int *) ;
 int get_ca_names (TYPE_3__*) ;
 int ssl3_get_req_cert_type (TYPE_3__*,int *) ;
 int tls12_copy_sigalgs (TYPE_3__*,int *,int const*,size_t) ;
 size_t tls12_get_psigalgs (TYPE_3__*,int,int const**) ;
 int tls13_restore_handshake_digest_for_pha (TYPE_3__*) ;
 int tls_construct_extensions (TYPE_3__*,int *,int ,int *,int ) ;

int tls_construct_certificate_request(SSL *s, WPACKET *pkt)
{
    if (SSL_IS_TLS13(s)) {

        if (s->post_handshake_auth == SSL_PHA_REQUEST_PENDING) {
            OPENSSL_free(s->pha_context);
            s->pha_context_len = 32;
            if ((s->pha_context = OPENSSL_malloc(s->pha_context_len)) == ((void*)0)
                    || RAND_bytes(s->pha_context, s->pha_context_len) <= 0
                    || !WPACKET_sub_memcpy_u8(pkt, s->pha_context, s->pha_context_len)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_CERTIFICATE_REQUEST,
                         ERR_R_INTERNAL_ERROR);
                return 0;
            }

            if (!tls13_restore_handshake_digest_for_pha(s)) {

                return 0;
            }
        } else {
            if (!WPACKET_put_bytes_u8(pkt, 0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_CERTIFICATE_REQUEST,
                         ERR_R_INTERNAL_ERROR);
                return 0;
            }
        }

        if (!tls_construct_extensions(s, pkt,
                                      SSL_EXT_TLS1_3_CERTIFICATE_REQUEST, ((void*)0),
                                      0)) {

            return 0;
        }
        goto done;
    }


    if (!WPACKET_start_sub_packet_u8(pkt)
        || !ssl3_get_req_cert_type(s, pkt) || !WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CERTIFICATE_REQUEST, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (SSL_USE_SIGALGS(s)) {
        const uint16_t *psigs;
        size_t nl = tls12_get_psigalgs(s, 1, &psigs);

        if (!WPACKET_start_sub_packet_u16(pkt)
                || !WPACKET_set_flags(pkt, WPACKET_FLAGS_NON_ZERO_LENGTH)
                || !tls12_copy_sigalgs(s, pkt, psigs, nl)
                || !WPACKET_close(pkt)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CERTIFICATE_REQUEST,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }

    if (!construct_ca_names(s, get_ca_names(s), pkt)) {

        return 0;
    }

 done:
    s->certreqs_sent++;
    s->s3.tmp.cert_request = 1;
    return 1;
}
