
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_18__ ;


struct TYPE_26__ {int session_id_len; int session_id; int pre_proc_exts; } ;
struct TYPE_23__ {int ticket_expected; } ;
struct TYPE_21__ {int flags; } ;
struct TYPE_25__ {scalar_t__ version; scalar_t__ sid_ctx_length; int verify_mode; TYPE_3__ ext; TYPE_4__* session; int verify_result; TYPE_18__* session_ctx; TYPE_1__ s3; int sid_ctx; } ;
struct TYPE_24__ {scalar_t__ ssl_version; scalar_t__ sid_ctx_length; long timeout; int flags; int verify_result; scalar_t__ time; int sid_ctx; } ;
struct TYPE_22__ {int sess_hit; int sess_timeout; } ;
struct TYPE_20__ {TYPE_2__ stats; } ;
typedef int SSL_TICKET_STATUS ;
typedef TYPE_4__ SSL_SESSION ;
typedef TYPE_5__ SSL ;
typedef TYPE_6__ CLIENTHELLO_MSG ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_CTX_remove_session (TYPE_18__*,TYPE_4__*) ;
 int SSL_EXT_CLIENT_HELLO ;
 int SSL_F_SSL_GET_PREV_SESSION ;
 scalar_t__ SSL_IS_TLS13 (TYPE_5__*) ;
 int SSL_R_INCONSISTENT_EXTMS ;
 int SSL_R_SESSION_ID_CONTEXT_UNINITIALIZED ;
 int SSL_SESSION_free (TYPE_4__*) ;
 int SSL_SESS_FLAG_EXTMS ;







 int SSL_VERIFY_PEER ;
 int SSLfatal (TYPE_5__*,int ,int ,int ) ;
 int TLS1_FLAGS_RECEIVED_EXTMS ;
 int TLSEXT_IDX_psk ;
 int TLSEXT_IDX_psk_kex_modes ;
 TYPE_4__* lookup_sess_in_cache (TYPE_5__*,int ,int ) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 scalar_t__ time (int *) ;
 int tls_get_ticket_from_client (TYPE_5__*,TYPE_6__*,TYPE_4__**) ;
 int tls_parse_extension (TYPE_5__*,int ,int ,int ,int *,int ) ;
 int tsan_counter (int *) ;

int ssl_get_prev_session(SSL *s, CLIENTHELLO_MSG *hello)
{


    SSL_SESSION *ret = ((void*)0);
    int fatal = 0;
    int try_session_cache = 0;
    SSL_TICKET_STATUS r;

    if (SSL_IS_TLS13(s)) {




        s->ext.ticket_expected = 1;
        if (!tls_parse_extension(s, TLSEXT_IDX_psk_kex_modes,
                                 SSL_EXT_CLIENT_HELLO, hello->pre_proc_exts,
                                 ((void*)0), 0)
                || !tls_parse_extension(s, TLSEXT_IDX_psk, SSL_EXT_CLIENT_HELLO,
                                        hello->pre_proc_exts, ((void*)0), 0))
            return -1;

        ret = s->session;
    } else {

        r = tls_get_ticket_from_client(s, hello, &ret);
        switch (r) {
        case 133:
        case 132:
            fatal = 1;
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GET_PREV_SESSION,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        case 131:
        case 134:
            if (hello->session_id_len > 0) {
                try_session_cache = 1;
                ret = lookup_sess_in_cache(s, hello->session_id,
                                           hello->session_id_len);
            }
            break;
        case 130:
        case 129:
        case 128:
            break;
        }
    }

    if (ret == ((void*)0))
        goto err;




    if (ret->ssl_version != s->version)
        goto err;

    if (ret->sid_ctx_length != s->sid_ctx_length
        || memcmp(ret->sid_ctx, s->sid_ctx, ret->sid_ctx_length)) {




        goto err;
    }

    if ((s->verify_mode & SSL_VERIFY_PEER) && s->sid_ctx_length == 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GET_PREV_SESSION,
                 SSL_R_SESSION_ID_CONTEXT_UNINITIALIZED);
        fatal = 1;
        goto err;
    }

    if (ret->timeout < (long)(time(((void*)0)) - ret->time)) {
        tsan_counter(&s->session_ctx->stats.sess_timeout);
        if (try_session_cache) {

            SSL_CTX_remove_session(s->session_ctx, ret);
        }
        goto err;
    }


    if (ret->flags & SSL_SESS_FLAG_EXTMS) {

        if (!(s->s3.flags & TLS1_FLAGS_RECEIVED_EXTMS)) {
            SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_SSL_GET_PREV_SESSION,
                     SSL_R_INCONSISTENT_EXTMS);
            fatal = 1;
            goto err;
        }
    } else if (s->s3.flags & TLS1_FLAGS_RECEIVED_EXTMS) {

        goto err;
    }

    if (!SSL_IS_TLS13(s)) {

        SSL_SESSION_free(s->session);
        s->session = ret;
    }

    tsan_counter(&s->session_ctx->stats.sess_hit);
    s->verify_result = s->session->verify_result;
    return 1;

 err:
    if (ret != ((void*)0)) {
        SSL_SESSION_free(ret);

        if (SSL_IS_TLS13(s))
            s->session = ((void*)0);

        if (!try_session_cache) {




            s->ext.ticket_expected = 1;
        }
    }
    if (fatal)
        return -1;

    return 0;
}
