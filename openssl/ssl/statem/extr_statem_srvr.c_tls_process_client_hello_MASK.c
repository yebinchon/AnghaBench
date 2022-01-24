#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {unsigned int legacy_version; unsigned int session_id_len; scalar_t__ dtls_cookie_len; scalar_t__ compressions_len; struct TYPE_17__* pre_proc_exts; int /*<<< orphan*/  pre_proc_exts_len; int /*<<< orphan*/  extensions; scalar_t__ compressions; int /*<<< orphan*/  ciphersuites; scalar_t__ dtls_cookie; scalar_t__ session_id; scalar_t__ random; scalar_t__ isv2; } ;
struct TYPE_15__ {int /*<<< orphan*/  send_connection_binding; } ;
struct TYPE_16__ {int renegotiate; int options; int new_session; scalar_t__ hello_retry_request; TYPE_3__* clienthello; int /*<<< orphan*/  rlayer; TYPE_1__ s3; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  MSG_PROCESS_RETURN ;
typedef  TYPE_3__ CLIENTHELLO_MSG ;

/* Variables and functions */
 unsigned int DTLS1_COOKIE_LENGTH ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 unsigned int MAX_COMPRESSIONS_SIZE ; 
 int /*<<< orphan*/  MSG_PROCESS_CONTINUE_PROCESSING ; 
 int /*<<< orphan*/  MSG_PROCESS_ERROR ; 
 int /*<<< orphan*/  MSG_PROCESS_FINISHED_READING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,unsigned int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 unsigned int SSL2_MT_CLIENT_HELLO ; 
 int /*<<< orphan*/  SSL3_AL_WARNING ; 
 unsigned int SSL3_RANDOM_SIZE ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_AD_NO_RENEGOTIATION ; 
 int /*<<< orphan*/  SSL_AD_UNEXPECTED_MESSAGE ; 
 int /*<<< orphan*/  SSL_EXT_CLIENT_HELLO ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_CLIENT_HELLO ; 
 scalar_t__ SSL_HRR_NONE ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 unsigned int SSL_MAX_SSL_SESSION_ID_LENGTH ; 
 int SSL_OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION ; 
 int SSL_OP_COOKIE_EXCHANGE ; 
 int SSL_OP_NO_RENEGOTIATION ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SSL_R_LENGTH_TOO_SHORT ; 
 int /*<<< orphan*/  SSL_R_RECORD_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SSL_R_UNEXPECTED_MESSAGE ; 
 int FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ *,int) ; 

MSG_PROCESS_RETURN FUNC22(SSL *s, PACKET *pkt)
{
    /* |cookie| will only be initialized for DTLS. */
    PACKET session_id, compression, extensions, cookie;
    static const unsigned char null_compression = 0;
    CLIENTHELLO_MSG *clienthello = NULL;

    /* Check if this is actually an unexpected renegotiation ClientHello */
    if (s->renegotiate == 0 && !FUNC14(s)) {
        if (!FUNC19(!FUNC15(s))) {
            FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        if ((s->options & SSL_OP_NO_RENEGOTIATION) != 0
                || (!s->s3.send_connection_binding
                    && (s->options
                        & SSL_OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION) == 0)) {
            FUNC20(s, SSL3_AL_WARNING, SSL_AD_NO_RENEGOTIATION);
            return MSG_PROCESS_FINISHED_READING;
        }
        s->renegotiate = 1;
        s->new_session = 1;
    }

    clienthello = FUNC1(sizeof(*clienthello));
    if (clienthello == NULL) {
        FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    /*
     * First, parse the raw ClientHello data into the CLIENTHELLO_MSG structure.
     */
    clienthello->isv2 = FUNC12(&s->rlayer);
    FUNC10(&cookie);

    if (clienthello->isv2) {
        unsigned int mt;

        if (!FUNC14(s)
                || s->hello_retry_request != SSL_HRR_NONE) {
            FUNC17(s, SSL_AD_UNEXPECTED_MESSAGE,
                     SSL_F_TLS_PROCESS_CLIENT_HELLO, SSL_R_UNEXPECTED_MESSAGE);
            goto err;
        }

        /*-
         * An SSLv3/TLSv1 backwards-compatible CLIENT-HELLO in an SSLv2
         * header is sent directly on the wire, not wrapped as a TLS
         * record. Our record layer just processes the message length and passes
         * the rest right through. Its format is:
         * Byte  Content
         * 0-1   msg_length - decoded by the record layer
         * 2     msg_type - s->init_msg points here
         * 3-4   version
         * 5-6   cipher_spec_length
         * 7-8   session_id_length
         * 9-10  challenge_length
         * ...   ...
         */

        if (!FUNC5(pkt, &mt)
            || mt != SSL2_MT_CLIENT_HELLO) {
            /*
             * Should never happen. We should have tested this in the record
             * layer in order to have determined that this is a SSLv2 record
             * in the first place
             */
            FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
    }

    if (!FUNC8(pkt, &clienthello->legacy_version)) {
        FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                 SSL_R_LENGTH_TOO_SHORT);
        goto err;
    }

    /* Parse the message and load client random. */
    if (clienthello->isv2) {
        /*
         * Handle an SSLv2 backwards compatible ClientHello
         * Note, this is only for SSLv3+ using the backward compatible format.
         * Real SSLv2 is not supported, and is rejected below.
         */
        unsigned int ciphersuite_len, session_id_len, challenge_len;
        PACKET challenge;

        if (!FUNC8(pkt, &ciphersuite_len)
            || !FUNC8(pkt, &session_id_len)
            || !FUNC8(pkt, &challenge_len)) {
            FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                     SSL_R_RECORD_LENGTH_MISMATCH);
            goto err;
        }

        if (session_id_len > SSL_MAX_SSL_SESSION_ID_LENGTH) {
            FUNC17(s, SSL_AD_ILLEGAL_PARAMETER,
                     SSL_F_TLS_PROCESS_CLIENT_HELLO, SSL_R_LENGTH_MISMATCH);
            goto err;
        }

        if (!FUNC9(pkt, &clienthello->ciphersuites,
                                   ciphersuite_len)
            || !FUNC4(pkt, clienthello->session_id, session_id_len)
            || !FUNC9(pkt, &challenge, challenge_len)
            /* No extensions. */
            || FUNC11(pkt) != 0) {
            FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                     SSL_R_RECORD_LENGTH_MISMATCH);
            goto err;
        }
        clienthello->session_id_len = session_id_len;

        /* Load the client random and compression list. We use SSL3_RANDOM_SIZE
         * here rather than sizeof(clienthello->random) because that is the limit
         * for SSLv3 and it is fixed. It won't change even if
         * sizeof(clienthello->random) does.
         */
        challenge_len = challenge_len > SSL3_RANDOM_SIZE
                        ? SSL3_RANDOM_SIZE : challenge_len;
        FUNC18(clienthello->random, 0, SSL3_RANDOM_SIZE);
        if (!FUNC4(&challenge,
                               clienthello->random + SSL3_RANDOM_SIZE -
                               challenge_len, challenge_len)
            /* Advertise only null compression. */
            || !FUNC2(&compression, &null_compression, 1)) {
            FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

        FUNC10(&clienthello->extensions);
    } else {
        /* Regular ClientHello. */
        if (!FUNC4(pkt, clienthello->random, SSL3_RANDOM_SIZE)
            || !FUNC6(pkt, &session_id)
            || !FUNC3(&session_id, clienthello->session_id,
                    SSL_MAX_SSL_SESSION_ID_LENGTH,
                    &clienthello->session_id_len)) {
            FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                     SSL_R_LENGTH_MISMATCH);
            goto err;
        }

        if (FUNC13(s)) {
            if (!FUNC6(pkt, &cookie)) {
                FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                         SSL_R_LENGTH_MISMATCH);
                goto err;
            }
            if (!FUNC3(&cookie, clienthello->dtls_cookie,
                                 DTLS1_COOKIE_LENGTH,
                                 &clienthello->dtls_cookie_len)) {
                FUNC17(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_PROCESS_CLIENT_HELLO, ERR_R_INTERNAL_ERROR);
                goto err;
            }
            /*
             * If we require cookies and this ClientHello doesn't contain one,
             * just return since we do not want to allocate any memory yet.
             * So check cookie length...
             */
            if (FUNC16(s) & SSL_OP_COOKIE_EXCHANGE) {
                if (clienthello->dtls_cookie_len == 0) {
                    FUNC0(clienthello);
                    return MSG_PROCESS_FINISHED_READING;
                }
            }
        }

        if (!FUNC7(pkt, &clienthello->ciphersuites)) {
            FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                     SSL_R_LENGTH_MISMATCH);
            goto err;
        }

        if (!FUNC6(pkt, &compression)) {
            FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                     SSL_R_LENGTH_MISMATCH);
            goto err;
        }

        /* Could be empty. */
        if (FUNC11(pkt) == 0) {
            FUNC10(&clienthello->extensions);
        } else {
            if (!FUNC7(pkt, &clienthello->extensions)
                    || FUNC11(pkt) != 0) {
                FUNC17(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                         SSL_R_LENGTH_MISMATCH);
                goto err;
            }
        }
    }

    if (!FUNC3(&compression, clienthello->compressions,
                         MAX_COMPRESSIONS_SIZE,
                         &clienthello->compressions_len)) {
        FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CLIENT_HELLO,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    /* Preserve the raw extensions PACKET for later use */
    extensions = clienthello->extensions;
    if (!FUNC21(s, &extensions, SSL_EXT_CLIENT_HELLO,
                                &clienthello->pre_proc_exts,
                                &clienthello->pre_proc_exts_len, 1)) {
        /* SSLfatal already been called */
        goto err;
    }
    s->clienthello = clienthello;

    return MSG_PROCESS_CONTINUE_PROCESSING;

 err:
    if (clienthello != NULL)
        FUNC0(clienthello->pre_proc_exts);
    FUNC0(clienthello);

    return MSG_PROCESS_ERROR;
}