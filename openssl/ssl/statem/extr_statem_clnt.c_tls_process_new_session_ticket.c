
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


typedef int nonce_label ;
struct TYPE_20__ {TYPE_2__* session; int resumption_master_secret; TYPE_15__* session_ctx; } ;
struct TYPE_18__ {unsigned int ticklen; unsigned long tick_lifetime_hint; unsigned long tick_age_add; int * tick; } ;
struct TYPE_19__ {unsigned int session_id_length; long time; size_t master_key_length; int master_key; scalar_t__ not_resumable; int session_id; TYPE_1__ ext; } ;
struct TYPE_17__ {int session_cache_mode; } ;
typedef TYPE_2__ SSL_SESSION ;
typedef TYPE_3__ SSL ;
typedef int RAW_EXTENSION ;
typedef int PACKET ;
typedef int MSG_PROCESS_RETURN ;
typedef int EVP_MD ;


 int ERR_R_EVP_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_Digest (int *,unsigned int,int ,unsigned int*,int ,int *) ;
 int EVP_MD_size (int const*) ;
 int EVP_sha256 () ;
 int MSG_PROCESS_CONTINUE_READING ;
 int MSG_PROCESS_ERROR ;
 int MSG_PROCESS_FINISHED_READING ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_malloc (unsigned int) ;
 int PACKET_as_length_prefixed_2 (int *,int *) ;
 int PACKET_copy_bytes (int *,int *,unsigned int) ;
 int PACKET_data (int *) ;
 int PACKET_get_length_prefixed_1 (int *,int *) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 int PACKET_get_net_4 (int *,unsigned long*) ;
 int PACKET_null_init (int *) ;
 unsigned int PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_CTX_remove_session (TYPE_15__*,TYPE_2__*) ;
 int SSL_EXT_TLS1_3_NEW_SESSION_TICKET ;
 int SSL_F_TLS_PROCESS_NEW_SESSION_TICKET ;
 scalar_t__ SSL_IS_TLS13 (TYPE_3__*) ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_SESSION_free (TYPE_2__*) ;
 int SSL_SESS_CACHE_CLIENT ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int ossl_assert (int) ;
 int * ssl_handshake_md (TYPE_3__*) ;
 TYPE_2__* ssl_session_dup (TYPE_2__*,int ) ;
 int ssl_update_cache (TYPE_3__*,int) ;
 scalar_t__ time (int *) ;
 int tls13_hkdf_expand (TYPE_3__*,int const*,int ,unsigned char const*,int,int ,unsigned int,int ,size_t,int) ;
 int tls_collect_extensions (TYPE_3__*,int *,int ,int **,int *,int) ;
 int tls_parse_all_extensions (TYPE_3__*,int ,int *,int *,int ,int) ;

MSG_PROCESS_RETURN tls_process_new_session_ticket(SSL *s, PACKET *pkt)
{
    unsigned int ticklen;
    unsigned long ticket_lifetime_hint, age_add = 0;
    unsigned int sess_len;
    RAW_EXTENSION *exts = ((void*)0);
    PACKET nonce;

    PACKET_null_init(&nonce);

    if (!PACKET_get_net_4(pkt, &ticket_lifetime_hint)
        || (SSL_IS_TLS13(s)
            && (!PACKET_get_net_4(pkt, &age_add)
                || !PACKET_get_length_prefixed_1(pkt, &nonce)))
        || !PACKET_get_net_2(pkt, &ticklen)
        || (SSL_IS_TLS13(s) ? (ticklen == 0 || PACKET_remaining(pkt) < ticklen)
                            : PACKET_remaining(pkt) != ticklen)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_NEW_SESSION_TICKET,
                 SSL_R_LENGTH_MISMATCH);
        goto err;
    }






    if (ticklen == 0)
        return MSG_PROCESS_CONTINUE_READING;
    if (SSL_IS_TLS13(s) || s->session->session_id_length > 0) {
        SSL_SESSION *new_sess;





        if ((new_sess = ssl_session_dup(s->session, 0)) == 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_PROCESS_NEW_SESSION_TICKET,
                     ERR_R_MALLOC_FAILURE);
            goto err;
        }

        if ((s->session_ctx->session_cache_mode & SSL_SESS_CACHE_CLIENT) != 0
                && !SSL_IS_TLS13(s)) {





            SSL_CTX_remove_session(s->session_ctx, s->session);
        }

        SSL_SESSION_free(s->session);
        s->session = new_sess;
    }





    s->session->time = (long)time(((void*)0));

    OPENSSL_free(s->session->ext.tick);
    s->session->ext.tick = ((void*)0);
    s->session->ext.ticklen = 0;

    s->session->ext.tick = OPENSSL_malloc(ticklen);
    if (s->session->ext.tick == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_NEW_SESSION_TICKET,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }
    if (!PACKET_copy_bytes(pkt, s->session->ext.tick, ticklen)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_NEW_SESSION_TICKET,
                 SSL_R_LENGTH_MISMATCH);
        goto err;
    }

    s->session->ext.tick_lifetime_hint = ticket_lifetime_hint;
    s->session->ext.tick_age_add = age_add;
    s->session->ext.ticklen = ticklen;

    if (SSL_IS_TLS13(s)) {
        PACKET extpkt;

        if (!PACKET_as_length_prefixed_2(pkt, &extpkt)
                || PACKET_remaining(pkt) != 0) {
            SSLfatal(s, SSL_AD_DECODE_ERROR,
                     SSL_F_TLS_PROCESS_NEW_SESSION_TICKET,
                     SSL_R_LENGTH_MISMATCH);
            goto err;
        }

        if (!tls_collect_extensions(s, &extpkt,
                                    SSL_EXT_TLS1_3_NEW_SESSION_TICKET, &exts,
                                    ((void*)0), 1)
                || !tls_parse_all_extensions(s,
                                             SSL_EXT_TLS1_3_NEW_SESSION_TICKET,
                                             exts, ((void*)0), 0, 1)) {

            goto err;
        }
    }
    if (!EVP_Digest(s->session->ext.tick, ticklen,
                    s->session->session_id, &sess_len,
                    EVP_sha256(), ((void*)0))) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_NEW_SESSION_TICKET,
                 ERR_R_EVP_LIB);
        goto err;
    }
    s->session->session_id_length = sess_len;
    s->session->not_resumable = 0;


    if (SSL_IS_TLS13(s)) {
        const EVP_MD *md = ssl_handshake_md(s);
        int hashleni = EVP_MD_size(md);
        size_t hashlen;
        static const unsigned char nonce_label[] = "resumption";


        if (!ossl_assert(hashleni >= 0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_PROCESS_NEW_SESSION_TICKET,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        hashlen = (size_t)hashleni;

        if (!tls13_hkdf_expand(s, md, s->resumption_master_secret,
                               nonce_label,
                               sizeof(nonce_label) - 1,
                               PACKET_data(&nonce),
                               PACKET_remaining(&nonce),
                               s->session->master_key,
                               hashlen, 1)) {

            goto err;
        }
        s->session->master_key_length = hashlen;

        OPENSSL_free(exts);
        ssl_update_cache(s, SSL_SESS_CACHE_CLIENT);
        return MSG_PROCESS_FINISHED_READING;
    }

    return MSG_PROCESS_CONTINUE_READING;
 err:
    OPENSSL_free(exts);
    return MSG_PROCESS_ERROR;
}
