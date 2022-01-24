#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_24__ {int /*<<< orphan*/  post_handshake_auth; } ;
struct TYPE_23__ {scalar_t__ status; TYPE_9__* ssl; int /*<<< orphan*/  bytes_to_read; int /*<<< orphan*/  bytes_to_write; } ;
struct TYPE_20__ {scalar_t__ force_pha; } ;
struct TYPE_19__ {int /*<<< orphan*/ * reneg_ciphers; } ;
struct TYPE_21__ {TYPE_2__ server; TYPE_1__ client; } ;
struct TYPE_22__ {scalar_t__ handshake_mode; TYPE_3__ extra; int /*<<< orphan*/  key_update_type; int /*<<< orphan*/  app_data_size; } ;
typedef  TYPE_4__ SSL_TEST_CTX ;
typedef  TYPE_5__ PEER ;

/* Variables and functions */
 void* PEER_ERROR ; 
 scalar_t__ PEER_RETRY ; 
 scalar_t__ PEER_SUCCESS ; 
 scalar_t__ PEER_TEST_FAILURE ; 
 int SSL_ERROR_WANT_READ ; 
 int /*<<< orphan*/  SSL_PHA_EXT_RECEIVED ; 
 scalar_t__ SSL_TEST_HANDSHAKE_KEY_UPDATE_CLIENT ; 
 scalar_t__ SSL_TEST_HANDSHAKE_KEY_UPDATE_SERVER ; 
 scalar_t__ SSL_TEST_HANDSHAKE_POST_HANDSHAKE_AUTH ; 
 scalar_t__ SSL_TEST_HANDSHAKE_RENEG_CLIENT ; 
 scalar_t__ SSL_TEST_HANDSHAKE_RENEG_SERVER ; 
 int FUNC0 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*) ; 
 int FUNC2 (TYPE_9__*) ; 
 int FUNC3 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_9__*,char*,int) ; 
 int FUNC5 (TYPE_9__*) ; 
 int FUNC6 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC13(const SSL_TEST_CTX *test_ctx, PEER *peer)
{
    int ret;
    char buf;

    if (peer->status == PEER_SUCCESS) {
        /*
         * We are a client that succeeded this step previously, but the server
         * wanted to retry. Probably there is a no_renegotiation warning alert
         * waiting for us. Attempt to continue the handshake.
         */
        peer->status = PEER_RETRY;
        FUNC12(peer);
        return;
    }

    if (!FUNC10(peer->status, PEER_RETRY)
            || !FUNC11(test_ctx->handshake_mode
                              == SSL_TEST_HANDSHAKE_RENEG_SERVER
                          || test_ctx->handshake_mode
                              == SSL_TEST_HANDSHAKE_RENEG_CLIENT
                          || test_ctx->handshake_mode
                              == SSL_TEST_HANDSHAKE_KEY_UPDATE_SERVER
                          || test_ctx->handshake_mode
                              == SSL_TEST_HANDSHAKE_KEY_UPDATE_CLIENT
                          || test_ctx->handshake_mode
                              == SSL_TEST_HANDSHAKE_POST_HANDSHAKE_AUTH)) {
        peer->status = PEER_TEST_FAILURE;
        return;
    }

    /* Reset the count of the amount of app data we need to read/write */
    peer->bytes_to_write = peer->bytes_to_read = test_ctx->app_data_size;

    /* Check if we are the peer that is going to initiate */
    if ((test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_RENEG_SERVER
                && FUNC2(peer->ssl))
            || (test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_RENEG_CLIENT
                && !FUNC2(peer->ssl))) {
        /*
         * If we already asked for a renegotiation then fall through to the
         * SSL_read() below.
         */
        if (!FUNC7(peer->ssl)) {
            /*
             * If we are the client we will always attempt to resume the
             * session. The server may or may not resume dependent on the
             * setting of SSL_OP_NO_SESSION_RESUMPTION_ON_RENEGOTIATION
             */
            if (FUNC2(peer->ssl)) {
                ret = FUNC5(peer->ssl);
            } else {
                if (test_ctx->extra.client.reneg_ciphers != NULL) {
                    if (!FUNC8(peer->ssl,
                                test_ctx->extra.client.reneg_ciphers)) {
                        peer->status = PEER_ERROR;
                        return;
                    }
                    ret = FUNC5(peer->ssl);
                } else {
                    ret = FUNC6(peer->ssl);
                }
            }
            if (!ret) {
                peer->status = PEER_ERROR;
                return;
            }
            FUNC12(peer);
            /*
             * If status is PEER_RETRY it means we're waiting on the peer to
             * continue the handshake. As far as setting up the renegotiation is
             * concerned that is a success. The next step will continue the
             * handshake to its conclusion.
             *
             * If status is PEER_SUCCESS then we are the server and we have
             * successfully sent the HelloRequest. We need to continue to wait
             * until the handshake arrives from the client.
             */
            if (peer->status == PEER_RETRY)
                peer->status = PEER_SUCCESS;
            else if (peer->status == PEER_SUCCESS)
                peer->status = PEER_RETRY;
            return;
        }
    } else if (test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_KEY_UPDATE_SERVER
               || test_ctx->handshake_mode
                  == SSL_TEST_HANDSHAKE_KEY_UPDATE_CLIENT) {
        if (FUNC2(peer->ssl)
                != (test_ctx->handshake_mode
                    == SSL_TEST_HANDSHAKE_KEY_UPDATE_SERVER)) {
            peer->status = PEER_SUCCESS;
            return;
        }

        ret = FUNC3(peer->ssl, test_ctx->key_update_type);
        if (!ret) {
            peer->status = PEER_ERROR;
            return;
        }
        FUNC12(peer);
        /*
         * This is a one step handshake. We shouldn't get anything other than
         * PEER_SUCCESS
         */
        if (peer->status != PEER_SUCCESS)
            peer->status = PEER_ERROR;
        return;
    } else if (test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_POST_HANDSHAKE_AUTH) {
        if (FUNC2(peer->ssl)) {
            /* Make the server believe it's received the extension */
            if (test_ctx->extra.server.force_pha)
                peer->ssl->post_handshake_auth = SSL_PHA_EXT_RECEIVED;
            ret = FUNC9(peer->ssl);
            if (!ret) {
                peer->status = PEER_ERROR;
                return;
            }
        }
        FUNC12(peer);
        /*
         * This is a one step handshake. We shouldn't get anything other than
         * PEER_SUCCESS
         */
        if (peer->status != PEER_SUCCESS)
            peer->status = PEER_ERROR;
        return;
    }

    /*
     * The SSL object is still expecting app data, even though it's going to
     * get a handshake message. We try to read, and it should fail - after which
     * we should be in a handshake
     */
    ret = FUNC4(peer->ssl, &buf, sizeof(buf));
    if (ret >= 0) {
        /*
         * We're not actually expecting data - we're expecting a reneg to
         * start
         */
        peer->status = PEER_ERROR;
        return;
    } else {
        int error = FUNC0(peer->ssl, ret);
        if (error != SSL_ERROR_WANT_READ) {
            peer->status = PEER_ERROR;
            return;
        }
        /* If we're not in init yet then we're not done with setup yet */
        if (!FUNC1(peer->ssl))
            return;
    }

    peer->status = PEER_SUCCESS;
}