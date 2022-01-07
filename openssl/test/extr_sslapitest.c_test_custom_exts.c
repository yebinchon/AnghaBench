
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_add_client_custom_ext (int *,int ,int ,int ,int*,int ,int*) ;
 int SSL_CTX_add_custom_ext (int *,int ,unsigned int,int ,int ,int*,int ,int*) ;
 int SSL_CTX_add_server_custom_ext (int *,int ,int ,int ,int*,int ,int*) ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_options (int *,int ) ;
 int SSL_CTX_set_tlsext_servername_arg (int *,int *) ;
 int SSL_CTX_set_tlsext_servername_callback (int *,int ) ;
 int SSL_ERROR_NONE ;
 unsigned int SSL_EXT_CLIENT_HELLO ;
 unsigned int SSL_EXT_TLS1_2_SERVER_HELLO ;
 unsigned int SSL_EXT_TLS1_3_CERTIFICATE ;
 unsigned int SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS ;
 unsigned int SSL_EXT_TLS1_3_NEW_SESSION_TICKET ;
 unsigned int SSL_EXT_TLS1_3_SERVER_HELLO ;
 int SSL_OP_NO_TLSv1_3 ;
 int SSL_SESSION_free (int *) ;
 int SSL_free (int *) ;
 int * SSL_get1_session (int *) ;
 int SSL_set_session (int *,int *) ;
 int SSL_shutdown (int *) ;
 int TEST_EXT_TYPE1 ;
 int TEST_false (int ) ;
 int TEST_true (int ) ;
 int TLS1_VERSION ;
 int * TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int clntaddnewcb ;
 int clntaddoldcb ;
 int clntparsenewcb ;
 int clntparseoldcb ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int *,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int new_add_cb ;
 int new_free_cb ;
 int new_parse_cb ;
 int old_add_cb ;
 int old_free_cb ;
 int old_parse_cb ;
 int privkey ;
 int sni_cb ;
 int snicb ;
 int srvaddnewcb ;
 int srvaddoldcb ;
 int srvparsenewcb ;
 int srvparseoldcb ;

__attribute__((used)) static int test_custom_exts(int tst)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0), *sctx2 = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0;
    static int server = 1;
    static int client = 0;
    SSL_SESSION *sess = ((void*)0);
    unsigned int context;
    clntaddoldcb = clntparseoldcb = srvaddoldcb = srvparseoldcb = 0;
    clntaddnewcb = clntparsenewcb = srvaddnewcb = srvparsenewcb = 0;
    snicb = 0;

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(), TLS_client_method(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        goto end;

    if (tst == 2
            && !TEST_true(create_ssl_ctx_pair(TLS_server_method(), ((void*)0),
                                              TLS1_VERSION, 0,
                                              &sctx2, ((void*)0), cert, privkey)))
        goto end;


    if (tst < 3) {
        SSL_CTX_set_options(cctx, SSL_OP_NO_TLSv1_3);
        SSL_CTX_set_options(sctx, SSL_OP_NO_TLSv1_3);
        if (sctx2 != ((void*)0))
            SSL_CTX_set_options(sctx2, SSL_OP_NO_TLSv1_3);
    }

    if (tst == 4) {
        context = SSL_EXT_CLIENT_HELLO
                  | SSL_EXT_TLS1_2_SERVER_HELLO
                  | SSL_EXT_TLS1_3_SERVER_HELLO
                  | SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS
                  | SSL_EXT_TLS1_3_CERTIFICATE
                  | SSL_EXT_TLS1_3_NEW_SESSION_TICKET;
    } else {
        context = SSL_EXT_CLIENT_HELLO
                  | SSL_EXT_TLS1_2_SERVER_HELLO
                  | SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS;
    }


    if (tst == 0) {
        if (!TEST_true(SSL_CTX_add_client_custom_ext(cctx, TEST_EXT_TYPE1,
                                                     old_add_cb, old_free_cb,
                                                     &client, old_parse_cb,
                                                     &client)))
            goto end;
    } else {
        if (!TEST_true(SSL_CTX_add_custom_ext(cctx, TEST_EXT_TYPE1, context,
                                              new_add_cb, new_free_cb,
                                              &client, new_parse_cb, &client)))
            goto end;
    }


    if (!TEST_false(SSL_CTX_add_client_custom_ext(cctx, TEST_EXT_TYPE1,
                                                  old_add_cb, old_free_cb,
                                                  &client, old_parse_cb,
                                                  &client))
            || !TEST_false(SSL_CTX_add_custom_ext(cctx, TEST_EXT_TYPE1,
                                                  context, new_add_cb,
                                                  new_free_cb, &client,
                                                  new_parse_cb, &client)))
        goto end;


    if (tst == 0) {
        if (!TEST_true(SSL_CTX_add_server_custom_ext(sctx, TEST_EXT_TYPE1,
                                                     old_add_cb, old_free_cb,
                                                     &server, old_parse_cb,
                                                     &server)))
            goto end;
    } else {
        if (!TEST_true(SSL_CTX_add_custom_ext(sctx, TEST_EXT_TYPE1, context,
                                              new_add_cb, new_free_cb,
                                              &server, new_parse_cb, &server)))
            goto end;
        if (sctx2 != ((void*)0)
                && !TEST_true(SSL_CTX_add_custom_ext(sctx2, TEST_EXT_TYPE1,
                                                     context, new_add_cb,
                                                     new_free_cb, &server,
                                                     new_parse_cb, &server)))
            goto end;
    }


    if (!TEST_false(SSL_CTX_add_server_custom_ext(sctx, TEST_EXT_TYPE1,
                                                  old_add_cb, old_free_cb,
                                                  &server, old_parse_cb,
                                                  &server))
            || !TEST_false(SSL_CTX_add_custom_ext(sctx, TEST_EXT_TYPE1,
                                                  context, new_add_cb,
                                                  new_free_cb, &server,
                                                  new_parse_cb, &server)))
        goto end;

    if (tst == 2) {

        if (!TEST_true(SSL_CTX_set_tlsext_servername_callback(sctx, sni_cb))
                || !TEST_true(SSL_CTX_set_tlsext_servername_arg(sctx, sctx2)))
            goto end;
    }

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl,
                                      &clientssl, ((void*)0), ((void*)0)))
            || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    if (tst == 0) {
        if (clntaddoldcb != 1
                || clntparseoldcb != 1
                || srvaddoldcb != 1
                || srvparseoldcb != 1)
            goto end;
    } else if (tst == 1 || tst == 2 || tst == 3) {
        if (clntaddnewcb != 1
                || clntparsenewcb != 1
                || srvaddnewcb != 1
                || srvparsenewcb != 1
                || (tst != 2 && snicb != 0)
                || (tst == 2 && snicb != 1))
            goto end;
    } else {

        if (clntaddnewcb != 1
                || clntparsenewcb != 5
                || srvaddnewcb != 5
                || srvparsenewcb != 1)
            goto end;
    }

    sess = SSL_get1_session(clientssl);
    SSL_shutdown(clientssl);
    SSL_shutdown(serverssl);
    SSL_free(serverssl);
    SSL_free(clientssl);
    serverssl = clientssl = ((void*)0);

    if (tst == 3) {

        testresult = 1;
        goto end;
    }

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                      ((void*)0), ((void*)0)))
            || !TEST_true(SSL_set_session(clientssl, sess))
            || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                               SSL_ERROR_NONE)))
        goto end;







    if (tst == 0) {
        if (clntaddoldcb != 2
                || clntparseoldcb != 1
                || srvaddoldcb != 1
                || srvparseoldcb != 1)
            goto end;
    } else if (tst == 1 || tst == 2 || tst == 3) {
        if (clntaddnewcb != 2
                || clntparsenewcb != 2
                || srvaddnewcb != 2
                || srvparsenewcb != 2)
            goto end;
    } else {




        if (clntaddnewcb != 2
                || clntparsenewcb != 8
                || srvaddnewcb != 8
                || srvparsenewcb != 2)
            goto end;
    }

    testresult = 1;

end:
    SSL_SESSION_free(sess);
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx2);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);
    return testresult;
}
