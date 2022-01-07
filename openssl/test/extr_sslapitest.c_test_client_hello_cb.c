
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_cipher_list (int *,char*) ;
 int SSL_CTX_set_client_hello_cb (int *,int ,int*) ;
 int SSL_CTX_set_max_proto_version (int *,int ) ;
 int SSL_ERROR_NONE ;
 int SSL_ERROR_WANT_CLIENT_HELLO_CB ;
 int SSL_free (int *) ;
 int SSL_get_error (int *,int) ;
 int TEST_false (int ) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_true (int ) ;
 int TLS1_2_VERSION ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int full_client_hello_callback ;
 int privkey ;

__attribute__((used)) static int test_client_hello_cb(void)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testctr = 0, testresult = 0;

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(), TLS_client_method(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        goto end;
    SSL_CTX_set_client_hello_cb(sctx, full_client_hello_callback, &testctr);


    SSL_CTX_set_max_proto_version(cctx, TLS1_2_VERSION);

    if (!TEST_true(SSL_CTX_set_cipher_list(cctx,
                        "AES256-GCM-SHA384:ECDHE-ECDSA-AES256-GCM-SHA384"))
            || !TEST_true(create_ssl_objects(sctx, cctx, &serverssl,
                                             &clientssl, ((void*)0), ((void*)0)))
            || !TEST_false(create_ssl_connection(serverssl, clientssl,
                        SSL_ERROR_WANT_CLIENT_HELLO_CB))




            || !TEST_int_eq(SSL_get_error(serverssl, -1),
                            SSL_ERROR_WANT_CLIENT_HELLO_CB)
            || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    testresult = 1;

end:
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);

    return testresult;
}
