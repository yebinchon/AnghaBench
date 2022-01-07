
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int rbio; int wbio; } ;
typedef int SSL_CTX ;
typedef TYPE_1__ SSL ;


 int BIO_get_ktls_recv (int ) ;
 int BIO_get_ktls_send (int ) ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_cipher_list (int *,char*) ;
 int SSL_ERROR_NONE ;
 int SSL_MODE_NO_KTLS_RX ;
 int SSL_MODE_NO_KTLS_TX ;
 int SSL_free (TYPE_1__*) ;
 int SSL_set_mode (TYPE_1__*,int ) ;
 int SSL_shutdown (TYPE_1__*) ;
 int TEST_false (int ) ;
 int TEST_true (int ) ;
 int TLS1_2_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int create_ssl_connection (TYPE_1__*,TYPE_1__*,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects2 (int *,int *,TYPE_1__**,TYPE_1__**,int,int) ;
 int create_test_sockets (int*,int*) ;
 int ktls_chk_platform (int) ;
 int ping_pong_query (TYPE_1__*,TYPE_1__*,int,int) ;
 int privkey ;

__attribute__((used)) static int execute_test_ktls(int cis_ktls_tx, int cis_ktls_rx,
                             int sis_ktls_tx, int sis_ktls_rx)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0;
    int cfd, sfd;

    if (!TEST_true(create_test_sockets(&cfd, &sfd)))
        goto end;


    if (!ktls_chk_platform(cfd))
        return 1;


    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(),
                                       TLS_client_method(),
                                       TLS1_2_VERSION, TLS1_2_VERSION,
                                       &sctx, &cctx, cert, privkey))
            || !TEST_true(SSL_CTX_set_cipher_list(cctx,
                                                  "AES128-GCM-SHA256"))
            || !TEST_true(create_ssl_objects2(sctx, cctx, &serverssl,
                                          &clientssl, sfd, cfd)))
        goto end;

    if (!cis_ktls_tx) {
        if (!TEST_true(SSL_set_mode(clientssl, SSL_MODE_NO_KTLS_TX)))
            goto end;
    }

    if (!sis_ktls_tx) {
        if (!TEST_true(SSL_set_mode(serverssl, SSL_MODE_NO_KTLS_TX)))
            goto end;
    }

    if (!cis_ktls_rx) {
        if (!TEST_true(SSL_set_mode(clientssl, SSL_MODE_NO_KTLS_RX)))
            goto end;
    }

    if (!sis_ktls_rx) {
        if (!TEST_true(SSL_set_mode(serverssl, SSL_MODE_NO_KTLS_RX)))
            goto end;
    }

    if (!TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    if (!cis_ktls_tx) {
        if (!TEST_false(BIO_get_ktls_send(clientssl->wbio)))
            goto end;
    } else {
        if (!TEST_true(BIO_get_ktls_send(clientssl->wbio)))
            goto end;
    }

    if (!sis_ktls_tx) {
        if (!TEST_false(BIO_get_ktls_send(serverssl->wbio)))
            goto end;
    } else {
        if (!TEST_true(BIO_get_ktls_send(serverssl->wbio)))
            goto end;
    }

    if (!cis_ktls_rx) {
        if (!TEST_false(BIO_get_ktls_recv(clientssl->rbio)))
            goto end;
    } else {
        if (!TEST_true(BIO_get_ktls_recv(clientssl->rbio)))
            goto end;
    }

    if (!sis_ktls_rx) {
        if (!TEST_false(BIO_get_ktls_recv(serverssl->rbio)))
            goto end;
    } else {
        if (!TEST_true(BIO_get_ktls_recv(serverssl->rbio)))
            goto end;
    }

    if (!TEST_true(ping_pong_query(clientssl, serverssl, cfd, sfd)))
        goto end;

    testresult = 1;
end:
    if (clientssl) {
        SSL_shutdown(clientssl);
        SSL_free(clientssl);
    }
    if (serverssl) {
        SSL_shutdown(serverssl);
        SSL_free(serverssl);
    }
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);
    serverssl = clientssl = ((void*)0);
    return testresult;
}
