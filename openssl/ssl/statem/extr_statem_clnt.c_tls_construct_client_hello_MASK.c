#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_22__ {scalar_t__ max_ver; } ;
struct TYPE_23__ {unsigned char* client_random; TYPE_2__ tmp; } ;
struct TYPE_27__ {scalar_t__ hello_retry_request; scalar_t__ version; int options; size_t tmp_session_id_len; unsigned char* tmp_session_id; TYPE_4__* ctx; TYPE_3__ s3; TYPE_1__* d1; TYPE_5__* session; scalar_t__ new_session; int /*<<< orphan*/  client_version; } ;
struct TYPE_26__ {int /*<<< orphan*/  id; } ;
struct TYPE_25__ {scalar_t__ ssl_version; unsigned char* session_id; int session_id_length; } ;
struct TYPE_24__ {scalar_t__ comp_methods; } ;
struct TYPE_21__ {int cookie_len; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_5__ SSL_SESSION ;
typedef  TYPE_6__ SSL_COMP ;
typedef  TYPE_7__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  DOWNGRADE_NONE ; 
 int ERR_R_INTERNAL_ERROR ; 
 scalar_t__ FUNC0 (unsigned char*,size_t) ; 
 size_t SSL3_RANDOM_SIZE ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_EXT_CLIENT_HELLO ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CLIENT_HELLO ; 
 scalar_t__ SSL_HRR_NONE ; 
 scalar_t__ FUNC1 (TYPE_7__*) ; 
 int SSL_OP_ENABLE_MIDDLEBOX_COMPAT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ TLS1_3_VERSION ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,unsigned char*,size_t) ; 
 int FUNC14 (scalar_t__) ; 
 TYPE_6__* FUNC15 (scalar_t__,int) ; 
 scalar_t__ FUNC16 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (TYPE_7__*,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC20 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_7__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC23(SSL *s, WPACKET *pkt)
{
    unsigned char *p;
    size_t sess_id_len;
    int i, protverr;
#ifndef OPENSSL_NO_COMP
    SSL_COMP *comp;
#endif
    SSL_SESSION *sess = s->session;
    unsigned char *session_id;

    /* Work out what SSL/TLS/DTLS version to use */
    protverr = FUNC20(s);
    if (protverr != 0) {
        FUNC4(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                 protverr);
        return 0;
    }

    if (sess == NULL
            || !FUNC21(s, sess->ssl_version, NULL)
            || !FUNC2(sess)) {
        if (s->hello_retry_request == SSL_HRR_NONE
                && !FUNC19(s, 0)) {
            /* SSLfatal() already called */
            return 0;
        }
    }
    /* else use the pre-loaded session */

    p = s->s3.client_random;

    /*
     * for DTLS if client_random is initialized, reuse it, we are
     * required to use same upon reply to HelloVerify
     */
    if (FUNC1(s)) {
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

    if (i && FUNC18(s, 0, p, sizeof(s->s3.client_random),
                                   DOWNGRADE_NONE) <= 0) {
        FUNC4(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    /*-
     * version indicates the negotiated version: for example from
     * an SSLv2/v3 compatible client hello). The client_version
     * field is the maximum version we permit and it is also
     * used in RSA encrypted premaster secrets. Some servers can
     * choke if we initially report a higher version then
     * renegotiate to a lower one in the premaster secret. This
     * didn't happen with TLS 1.0 as most servers supported it
     * but it can with TLS 1.1 or later if the server only supports
     * 1.0.
     *
     * Possible scenario with previous logic:
     *      1. Client hello indicates TLS 1.2
     *      2. Server hello says TLS 1.0
     *      3. RSA encrypted premaster secret uses 1.2.
     *      4. Handshake proceeds using TLS 1.0.
     *      5. Server sends hello request to renegotiate.
     *      6. Client hello indicates TLS v1.0 as we now
     *         know that is maximum server supports.
     *      7. Server chokes on RSA encrypted premaster secret
     *         containing version 1.0.
     *
     * For interoperability it should be OK to always use the
     * maximum version we support in client hello and then rely
     * on the checking of version to ensure the servers isn't
     * being inconsistent: for example initially negotiating with
     * TLS 1.0 and renegotiating with TLS 1.2. We do this by using
     * client_version in client hello and not resetting it to
     * the negotiated version.
     *
     * For TLS 1.3 we always set the ClientHello version to 1.2 and rely on the
     * supported_versions extension for the real supported versions.
     */
    if (!FUNC7(pkt, s->client_version)
            || !FUNC6(pkt, s->s3.client_random, SSL3_RANDOM_SIZE)) {
        FUNC4(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    /* Session ID */
    session_id = s->session->session_id;
    if (s->new_session || s->session->ssl_version == TLS1_3_VERSION) {
        if (s->version == TLS1_3_VERSION
                && (s->options & SSL_OP_ENABLE_MIDDLEBOX_COMPAT) != 0) {
            sess_id_len = sizeof(s->tmp_session_id);
            s->tmp_session_id_len = sess_id_len;
            session_id = s->tmp_session_id;
            if (s->hello_retry_request == SSL_HRR_NONE
                    && FUNC0(s->tmp_session_id, sess_id_len) <= 0) {
                FUNC4(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                         ERR_R_INTERNAL_ERROR);
                return 0;
            }
        } else {
            sess_id_len = 0;
        }
    } else {
        FUNC12(s->session->session_id_length <= sizeof(s->session->session_id));
        sess_id_len = s->session->session_id_length;
        if (s->version == TLS1_3_VERSION) {
            s->tmp_session_id_len = sess_id_len;
            FUNC13(s->tmp_session_id, s->session->session_id, sess_id_len);
        }
    }
    if (!FUNC10(pkt)
            || (sess_id_len != 0 && !FUNC6(pkt, session_id,
                                                    sess_id_len))
            || !FUNC5(pkt)) {
        FUNC4(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    /* cookie stuff for DTLS */
    if (FUNC1(s)) {
        if (s->d1->cookie_len > sizeof(s->d1->cookie)
                || !FUNC11(pkt, s->d1->cookie,
                                          s->d1->cookie_len)) {
            FUNC4(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }

    /* Ciphers supported */
    if (!FUNC9(pkt)) {
        FUNC4(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (!FUNC17(s, FUNC3(s), pkt)) {
        /* SSLfatal() already called */
        return 0;
    }
    if (!FUNC5(pkt)) {
        FUNC4(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    /* COMPRESSION */
    if (!FUNC10(pkt)) {
        FUNC4(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
#ifndef OPENSSL_NO_COMP
    if (FUNC16(s)
            && s->ctx->comp_methods
            && (FUNC1(s) || s->s3.tmp.max_ver < TLS1_3_VERSION)) {
        int compnum = FUNC14(s->ctx->comp_methods);
        for (i = 0; i < compnum; i++) {
            comp = FUNC15(s->ctx->comp_methods, i);
            if (!FUNC8(pkt, comp->id)) {
                FUNC4(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                         ERR_R_INTERNAL_ERROR);
                return 0;
            }
        }
    }
#endif
    /* Add the NULL method */
    if (!FUNC8(pkt, 0) || !FUNC5(pkt)) {
        FUNC4(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    /* TLS extensions */
    if (!FUNC22(s, pkt, SSL_EXT_CLIENT_HELLO, NULL, 0)) {
        /* SSLfatal() already called */
        return 0;
    }

    return 1;
}