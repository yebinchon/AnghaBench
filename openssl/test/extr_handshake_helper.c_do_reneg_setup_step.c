
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int buf ;
struct TYPE_24__ {int post_handshake_auth; } ;
struct TYPE_23__ {scalar_t__ status; TYPE_9__* ssl; int bytes_to_read; int bytes_to_write; } ;
struct TYPE_20__ {scalar_t__ force_pha; } ;
struct TYPE_19__ {int * reneg_ciphers; } ;
struct TYPE_21__ {TYPE_2__ server; TYPE_1__ client; } ;
struct TYPE_22__ {scalar_t__ handshake_mode; TYPE_3__ extra; int key_update_type; int app_data_size; } ;
typedef TYPE_4__ SSL_TEST_CTX ;
typedef TYPE_5__ PEER ;


 void* PEER_ERROR ;
 scalar_t__ PEER_RETRY ;
 scalar_t__ PEER_SUCCESS ;
 scalar_t__ PEER_TEST_FAILURE ;
 int SSL_ERROR_WANT_READ ;
 int SSL_PHA_EXT_RECEIVED ;
 scalar_t__ SSL_TEST_HANDSHAKE_KEY_UPDATE_CLIENT ;
 scalar_t__ SSL_TEST_HANDSHAKE_KEY_UPDATE_SERVER ;
 scalar_t__ SSL_TEST_HANDSHAKE_POST_HANDSHAKE_AUTH ;
 scalar_t__ SSL_TEST_HANDSHAKE_RENEG_CLIENT ;
 scalar_t__ SSL_TEST_HANDSHAKE_RENEG_SERVER ;
 int SSL_get_error (TYPE_9__*,int) ;
 int SSL_in_init (TYPE_9__*) ;
 int SSL_is_server (TYPE_9__*) ;
 int SSL_key_update (TYPE_9__*,int ) ;
 int SSL_read (TYPE_9__*,char*,int) ;
 int SSL_renegotiate (TYPE_9__*) ;
 int SSL_renegotiate_abbreviated (TYPE_9__*) ;
 int SSL_renegotiate_pending (TYPE_9__*) ;
 int SSL_set_cipher_list (TYPE_9__*,int *) ;
 int SSL_verify_client_post_handshake (TYPE_9__*) ;
 int TEST_int_eq (scalar_t__,scalar_t__) ;
 int TEST_true (int) ;
 int do_handshake_step (TYPE_5__*) ;

__attribute__((used)) static void do_reneg_setup_step(const SSL_TEST_CTX *test_ctx, PEER *peer)
{
    int ret;
    char buf;

    if (peer->status == PEER_SUCCESS) {





        peer->status = PEER_RETRY;
        do_handshake_step(peer);
        return;
    }

    if (!TEST_int_eq(peer->status, PEER_RETRY)
            || !TEST_true(test_ctx->handshake_mode
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


    peer->bytes_to_write = peer->bytes_to_read = test_ctx->app_data_size;


    if ((test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_RENEG_SERVER
                && SSL_is_server(peer->ssl))
            || (test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_RENEG_CLIENT
                && !SSL_is_server(peer->ssl))) {




        if (!SSL_renegotiate_pending(peer->ssl)) {





            if (SSL_is_server(peer->ssl)) {
                ret = SSL_renegotiate(peer->ssl);
            } else {
                if (test_ctx->extra.client.reneg_ciphers != ((void*)0)) {
                    if (!SSL_set_cipher_list(peer->ssl,
                                test_ctx->extra.client.reneg_ciphers)) {
                        peer->status = PEER_ERROR;
                        return;
                    }
                    ret = SSL_renegotiate(peer->ssl);
                } else {
                    ret = SSL_renegotiate_abbreviated(peer->ssl);
                }
            }
            if (!ret) {
                peer->status = PEER_ERROR;
                return;
            }
            do_handshake_step(peer);
            if (peer->status == PEER_RETRY)
                peer->status = PEER_SUCCESS;
            else if (peer->status == PEER_SUCCESS)
                peer->status = PEER_RETRY;
            return;
        }
    } else if (test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_KEY_UPDATE_SERVER
               || test_ctx->handshake_mode
                  == SSL_TEST_HANDSHAKE_KEY_UPDATE_CLIENT) {
        if (SSL_is_server(peer->ssl)
                != (test_ctx->handshake_mode
                    == SSL_TEST_HANDSHAKE_KEY_UPDATE_SERVER)) {
            peer->status = PEER_SUCCESS;
            return;
        }

        ret = SSL_key_update(peer->ssl, test_ctx->key_update_type);
        if (!ret) {
            peer->status = PEER_ERROR;
            return;
        }
        do_handshake_step(peer);




        if (peer->status != PEER_SUCCESS)
            peer->status = PEER_ERROR;
        return;
    } else if (test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_POST_HANDSHAKE_AUTH) {
        if (SSL_is_server(peer->ssl)) {

            if (test_ctx->extra.server.force_pha)
                peer->ssl->post_handshake_auth = SSL_PHA_EXT_RECEIVED;
            ret = SSL_verify_client_post_handshake(peer->ssl);
            if (!ret) {
                peer->status = PEER_ERROR;
                return;
            }
        }
        do_handshake_step(peer);




        if (peer->status != PEER_SUCCESS)
            peer->status = PEER_ERROR;
        return;
    }






    ret = SSL_read(peer->ssl, &buf, sizeof(buf));
    if (ret >= 0) {




        peer->status = PEER_ERROR;
        return;
    } else {
        int error = SSL_get_error(peer->ssl, ret);
        if (error != SSL_ERROR_WANT_READ) {
            peer->status = PEER_ERROR;
            return;
        }

        if (!SSL_in_init(peer->ssl))
            return;
    }

    peer->status = PEER_SUCCESS;
}
