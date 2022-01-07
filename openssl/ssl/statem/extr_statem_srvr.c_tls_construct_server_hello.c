
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef int WPACKET ;
struct TYPE_18__ {int new_cipher; TYPE_2__* new_compression; } ;
struct TYPE_19__ {TYPE_4__ tmp; int server_random; } ;
struct TYPE_20__ {scalar_t__ hello_retry_request; int version; size_t tmp_session_id_len; unsigned char* tmp_session_id; int verify_mode; scalar_t__ hit; TYPE_12__* session; TYPE_5__ s3; TYPE_3__* method; TYPE_1__* ctx; } ;
struct TYPE_17__ {int (* put_cipher_by_char ) (int ,int *,size_t*) ;} ;
struct TYPE_16__ {int id; } ;
struct TYPE_15__ {int session_cache_mode; } ;
struct TYPE_14__ {size_t session_id_length; unsigned char* session_id; scalar_t__ not_resumable; } ;
typedef TYPE_6__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL3_RANDOM_SIZE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_EXT_TLS1_2_SERVER_HELLO ;
 int SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST ;
 int SSL_EXT_TLS1_3_SERVER_HELLO ;
 int SSL_F_TLS_CONSTRUCT_SERVER_HELLO ;
 scalar_t__ SSL_HRR_PENDING ;
 scalar_t__ SSL_IS_TLS13 (TYPE_6__*) ;
 int SSL_SESSION_free (TYPE_12__*) ;
 int SSL_SESS_CACHE_SERVER ;
 int SSL_VERIFY_PEER ;
 int SSLfatal (TYPE_6__*,int ,int ,int ) ;
 int TLS1_2_VERSION ;
 int WPACKET_memcpy (int *,int ,int ) ;
 int WPACKET_put_bytes_u16 (int *,int) ;
 int WPACKET_put_bytes_u8 (int *,int) ;
 int WPACKET_sub_memcpy_u8 (int *,unsigned char*,size_t) ;
 int create_synthetic_message_hash (TYPE_6__*,int *,int ,int *,int ) ;
 int hrrrandom ;
 int ssl3_digest_cached_records (TYPE_6__*,int ) ;
 int stub1 (int ,int *,size_t*) ;
 int tls_construct_extensions (TYPE_6__*,int *,int ,int *,int ) ;

int tls_construct_server_hello(SSL *s, WPACKET *pkt)
{
    int compm;
    size_t sl, len;
    int version;
    unsigned char *session_id;
    int usetls13 = SSL_IS_TLS13(s) || s->hello_retry_request == SSL_HRR_PENDING;

    version = usetls13 ? TLS1_2_VERSION : s->version;
    if (!WPACKET_put_bytes_u16(pkt, version)




            || !WPACKET_memcpy(pkt,
                               s->hello_retry_request == SSL_HRR_PENDING
                                   ? hrrrandom : s->s3.server_random,
                               SSL3_RANDOM_SIZE)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_SERVER_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    if (s->session->not_resumable ||
        (!(s->ctx->session_cache_mode & SSL_SESS_CACHE_SERVER)
         && !s->hit))
        s->session->session_id_length = 0;

    if (usetls13) {
        sl = s->tmp_session_id_len;
        session_id = s->tmp_session_id;
    } else {
        sl = s->session->session_id_length;
        session_id = s->session->session_id;
    }

    if (sl > sizeof(s->session->session_id)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_SERVER_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }





    if (usetls13 || s->s3.tmp.new_compression == ((void*)0))
        compm = 0;
    else
        compm = s->s3.tmp.new_compression->id;


    if (!WPACKET_sub_memcpy_u8(pkt, session_id, sl)
            || !s->method->put_cipher_by_char(s->s3.tmp.new_cipher, pkt, &len)
            || !WPACKET_put_bytes_u8(pkt, compm)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_SERVER_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (!tls_construct_extensions(s, pkt,
                                  s->hello_retry_request == SSL_HRR_PENDING
                                      ? SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST
                                      : (SSL_IS_TLS13(s)
                                          ? SSL_EXT_TLS1_3_SERVER_HELLO
                                          : SSL_EXT_TLS1_2_SERVER_HELLO),
                                  ((void*)0), 0)) {

        return 0;
    }

    if (s->hello_retry_request == SSL_HRR_PENDING) {

        SSL_SESSION_free(s->session);
        s->session = ((void*)0);
        s->hit = 0;





        if (!create_synthetic_message_hash(s, ((void*)0), 0, ((void*)0), 0)) {

            return 0;
        }
    } else if (!(s->verify_mode & SSL_VERIFY_PEER)
                && !ssl3_digest_cached_records(s, 0)) {
                                       ;
        return 0;
    }

    return 1;
}
