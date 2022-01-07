
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_22__ {scalar_t__ max_ver; } ;
struct TYPE_23__ {unsigned char* client_random; TYPE_2__ tmp; } ;
struct TYPE_27__ {scalar_t__ hello_retry_request; scalar_t__ version; int options; size_t tmp_session_id_len; unsigned char* tmp_session_id; TYPE_4__* ctx; TYPE_3__ s3; TYPE_1__* d1; TYPE_5__* session; scalar_t__ new_session; int client_version; } ;
struct TYPE_26__ {int id; } ;
struct TYPE_25__ {scalar_t__ ssl_version; unsigned char* session_id; int session_id_length; } ;
struct TYPE_24__ {scalar_t__ comp_methods; } ;
struct TYPE_21__ {int cookie_len; int cookie; } ;
typedef TYPE_5__ SSL_SESSION ;
typedef TYPE_6__ SSL_COMP ;
typedef TYPE_7__ SSL ;


 int DOWNGRADE_NONE ;
 int ERR_R_INTERNAL_ERROR ;
 scalar_t__ RAND_bytes (unsigned char*,size_t) ;
 size_t SSL3_RANDOM_SIZE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_EXT_CLIENT_HELLO ;
 int SSL_F_TLS_CONSTRUCT_CLIENT_HELLO ;
 scalar_t__ SSL_HRR_NONE ;
 scalar_t__ SSL_IS_DTLS (TYPE_7__*) ;
 int SSL_OP_ENABLE_MIDDLEBOX_COMPAT ;
 int SSL_SESSION_is_resumable (TYPE_5__*) ;
 int SSL_get_ciphers (TYPE_7__*) ;
 int SSLfatal (TYPE_7__*,int ,int ,int) ;
 scalar_t__ TLS1_3_VERSION ;
 int WPACKET_close (int *) ;
 int WPACKET_memcpy (int *,unsigned char*,size_t) ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_put_bytes_u8 (int *,int ) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int WPACKET_start_sub_packet_u8 (int *) ;
 int WPACKET_sub_memcpy_u8 (int *,int ,int) ;
 int assert (int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int sk_SSL_COMP_num (scalar_t__) ;
 TYPE_6__* sk_SSL_COMP_value (scalar_t__,int) ;
 scalar_t__ ssl_allow_compression (TYPE_7__*) ;
 int ssl_cipher_list_to_bytes (TYPE_7__*,int ,int *) ;
 scalar_t__ ssl_fill_hello_random (TYPE_7__*,int ,unsigned char*,int,int ) ;
 int ssl_get_new_session (TYPE_7__*,int ) ;
 int ssl_set_client_hello_version (TYPE_7__*) ;
 int ssl_version_supported (TYPE_7__*,scalar_t__,int *) ;
 int tls_construct_extensions (TYPE_7__*,int *,int ,int *,int ) ;

int tls_construct_client_hello(SSL *s, WPACKET *pkt)
{
    unsigned char *p;
    size_t sess_id_len;
    int i, protverr;

    SSL_COMP *comp;

    SSL_SESSION *sess = s->session;
    unsigned char *session_id;


    protverr = ssl_set_client_hello_version(s);
    if (protverr != 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                 protverr);
        return 0;
    }

    if (sess == ((void*)0)
            || !ssl_version_supported(s, sess->ssl_version, ((void*)0))
            || !SSL_SESSION_is_resumable(sess)) {
        if (s->hello_retry_request == SSL_HRR_NONE
                && !ssl_get_new_session(s, 0)) {

            return 0;
        }
    }


    p = s->s3.client_random;





    if (SSL_IS_DTLS(s)) {
        size_t idx;
        i = 1;
        for (idx = 0; idx < sizeof(s->s3.client_random); idx++) {
            if (p[idx]) {
                i = 0;
                break;
            }
        }
    } else {
        i = (s->hello_retry_request == SSL_HRR_NONE);
    }

    if (i && ssl_fill_hello_random(s, 0, p, sizeof(s->s3.client_random),
                                   DOWNGRADE_NONE) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    if (!WPACKET_put_bytes_u16(pkt, s->client_version)
            || !WPACKET_memcpy(pkt, s->s3.client_random, SSL3_RANDOM_SIZE)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }


    session_id = s->session->session_id;
    if (s->new_session || s->session->ssl_version == TLS1_3_VERSION) {
        if (s->version == TLS1_3_VERSION
                && (s->options & SSL_OP_ENABLE_MIDDLEBOX_COMPAT) != 0) {
            sess_id_len = sizeof(s->tmp_session_id);
            s->tmp_session_id_len = sess_id_len;
            session_id = s->tmp_session_id;
            if (s->hello_retry_request == SSL_HRR_NONE
                    && RAND_bytes(s->tmp_session_id, sess_id_len) <= 0) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                         ERR_R_INTERNAL_ERROR);
                return 0;
            }
        } else {
            sess_id_len = 0;
        }
    } else {
        assert(s->session->session_id_length <= sizeof(s->session->session_id));
        sess_id_len = s->session->session_id_length;
        if (s->version == TLS1_3_VERSION) {
            s->tmp_session_id_len = sess_id_len;
            memcpy(s->tmp_session_id, s->session->session_id, sess_id_len);
        }
    }
    if (!WPACKET_start_sub_packet_u8(pkt)
            || (sess_id_len != 0 && !WPACKET_memcpy(pkt, session_id,
                                                    sess_id_len))
            || !WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }


    if (SSL_IS_DTLS(s)) {
        if (s->d1->cookie_len > sizeof(s->d1->cookie)
                || !WPACKET_sub_memcpy_u8(pkt, s->d1->cookie,
                                          s->d1->cookie_len)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }


    if (!WPACKET_start_sub_packet_u16(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (!ssl_cipher_list_to_bytes(s, SSL_get_ciphers(s), pkt)) {

        return 0;
    }
    if (!WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }


    if (!WPACKET_start_sub_packet_u8(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (ssl_allow_compression(s)
            && s->ctx->comp_methods
            && (SSL_IS_DTLS(s) || s->s3.tmp.max_ver < TLS1_3_VERSION)) {
        int compnum = sk_SSL_COMP_num(s->ctx->comp_methods);
        for (i = 0; i < compnum; i++) {
            comp = sk_SSL_COMP_value(s->ctx->comp_methods, i);
            if (!WPACKET_put_bytes_u8(pkt, comp->id)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                         ERR_R_INTERNAL_ERROR);
                return 0;
            }
        }
    }


    if (!WPACKET_put_bytes_u8(pkt, 0) || !WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }


    if (!tls_construct_extensions(s, pkt, SSL_EXT_CLIENT_HELLO, ((void*)0), 0)) {

        return 0;
    }

    return 1;
}
