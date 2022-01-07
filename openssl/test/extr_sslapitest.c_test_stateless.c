
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_clear_options (int *,int ) ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_stateless_cookie_generate_cb (int *,int ) ;
 int SSL_CTX_set_stateless_cookie_verify_cb (int *,int ) ;
 int SSL_ERROR_NONE ;
 int SSL_ERROR_WANT_READ ;
 int SSL_OP_ENABLE_MIDDLEBOX_COMPAT ;
 int SSL_free (int *) ;
 int SSL_stateless (int *) ;
 int TEST_false (int ) ;
 int TEST_int_eq (int ,int) ;
 int TEST_true (int ) ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int generate_stateless_cookie_callback ;
 int privkey ;
 int shutdown_ssl_connection (int *,int *) ;
 int verify_stateless_cookie_callback ;

__attribute__((used)) static int test_stateless(void)
{
    SSL_CTX *sctx = ((void*)0), *cctx = ((void*)0);
    SSL *serverssl = ((void*)0), *clientssl = ((void*)0);
    int testresult = 0;

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(), TLS_client_method(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        goto end;


    SSL_CTX_clear_options(cctx, SSL_OP_ENABLE_MIDDLEBOX_COMPAT);

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                      ((void*)0), ((void*)0)))

            || !TEST_false(create_ssl_connection(serverssl, clientssl,
                                                 SSL_ERROR_WANT_READ))




            || !TEST_int_eq(SSL_stateless(serverssl), -1))
        goto end;


    SSL_free(clientssl);
    clientssl = ((void*)0);


    SSL_CTX_set_stateless_cookie_generate_cb(sctx, generate_stateless_cookie_callback);
    SSL_CTX_set_stateless_cookie_verify_cb(sctx, verify_stateless_cookie_callback);





    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                             ((void*)0), ((void*)0)))

            || !TEST_false(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_WANT_READ))

            || !TEST_int_eq(SSL_stateless(serverssl), 0))
        goto end;


    SSL_free(clientssl);
    clientssl = ((void*)0);





    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                             ((void*)0), ((void*)0)))

            || !TEST_false(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_WANT_READ))

            || !TEST_int_eq(SSL_stateless(serverssl), 0)

            || !TEST_false(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_WANT_READ))

            || !TEST_int_eq(SSL_stateless(serverssl), 1)

            || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    shutdown_ssl_connection(serverssl, clientssl);
    serverssl = clientssl = ((void*)0);
    testresult = 1;

 end:
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);
    return testresult;

}
