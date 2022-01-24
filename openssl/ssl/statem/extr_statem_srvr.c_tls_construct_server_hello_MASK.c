#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_18__ {int /*<<< orphan*/  new_cipher; TYPE_2__* new_compression; } ;
struct TYPE_19__ {TYPE_4__ tmp; int /*<<< orphan*/  server_random; } ;
struct TYPE_20__ {scalar_t__ hello_retry_request; int version; size_t tmp_session_id_len; unsigned char* tmp_session_id; int verify_mode; scalar_t__ hit; TYPE_12__* session; TYPE_5__ s3; TYPE_3__* method; TYPE_1__* ctx; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* put_cipher_by_char ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ;} ;
struct TYPE_16__ {int id; } ;
struct TYPE_15__ {int session_cache_mode; } ;
struct TYPE_14__ {size_t session_id_length; unsigned char* session_id; scalar_t__ not_resumable; } ;
typedef  TYPE_6__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL3_RANDOM_SIZE ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_EXT_TLS1_2_SERVER_HELLO ; 
 int /*<<< orphan*/  SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST ; 
 int /*<<< orphan*/  SSL_EXT_TLS1_3_SERVER_HELLO ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_SERVER_HELLO ; 
 scalar_t__ SSL_HRR_PENDING ; 
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_12__*) ; 
 int SSL_SESS_CACHE_SERVER ; 
 int SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TLS1_2_VERSION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hrrrandom ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC11(SSL *s, WPACKET *pkt)
{
    int compm;
    size_t sl, len;
    int version;
    unsigned char *session_id;
    int usetls13 = FUNC0(s) || s->hello_retry_request == SSL_HRR_PENDING;

    version = usetls13 ? TLS1_2_VERSION : s->version;
    if (!FUNC4(pkt, version)
               /*
                * Random stuff. Filling of the server_random takes place in
                * tls_process_client_hello()
                */
            || !FUNC3(pkt,
                               s->hello_retry_request == SSL_HRR_PENDING
                                   ? hrrrandom : s->s3.server_random,
                               SSL3_RANDOM_SIZE)) {
        FUNC2(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_SERVER_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    /*-
     * There are several cases for the session ID to send
     * back in the server hello:
     * - For session reuse from the session cache,
     *   we send back the old session ID.
     * - If stateless session reuse (using a session ticket)
     *   is successful, we send back the client's "session ID"
     *   (which doesn't actually identify the session).
     * - If it is a new session, we send back the new
     *   session ID.
     * - However, if we want the new session to be single-use,
     *   we send back a 0-length session ID.
     * - In TLSv1.3 we echo back the session id sent to us by the client
     *   regardless
     * s->hit is non-zero in either case of session reuse,
     * so the following won't overwrite an ID that we're supposed
     * to send back.
     */
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
        FUNC2(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_SERVER_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    /* set up the compression method */
#ifdef OPENSSL_NO_COMP
    compm = 0;
#else
    if (usetls13 || s->s3.tmp.new_compression == NULL)
        compm = 0;
    else
        compm = s->s3.tmp.new_compression->id;
#endif

    if (!FUNC6(pkt, session_id, sl)
            || !s->method->put_cipher_by_char(s->s3.tmp.new_cipher, pkt, &len)
            || !FUNC5(pkt, compm)) {
        FUNC2(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_SERVER_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (!FUNC10(s, pkt,
                                  s->hello_retry_request == SSL_HRR_PENDING
                                      ? SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST
                                      : (FUNC0(s)
                                          ? SSL_EXT_TLS1_3_SERVER_HELLO
                                          : SSL_EXT_TLS1_2_SERVER_HELLO),
                                  NULL, 0)) {
        /* SSLfatal() already called */
        return 0;
    }

    if (s->hello_retry_request == SSL_HRR_PENDING) {
        /* Ditch the session. We'll create a new one next time around */
        FUNC1(s->session);
        s->session = NULL;
        s->hit = 0;

        /*
         * Re-initialise the Transcript Hash. We're going to prepopulate it with
         * a synthetic message_hash in place of ClientHello1.
         */
        if (!FUNC7(s, NULL, 0, NULL, 0)) {
            /* SSLfatal() already called */
            return 0;
        }
    } else if (!(s->verify_mode & SSL_VERIFY_PEER)
                && !FUNC8(s, 0)) {
        /* SSLfatal() already called */;
        return 0;
    }

    return 1;
}