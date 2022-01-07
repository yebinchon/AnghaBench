
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;


 size_t OSSL_NELEM (int **) ;
 int SSL_CTX_free (int *) ;
 int SSL_ERROR_NONE ;
 int SSL_SESSION_free (int *) ;
 int SSL_free (int *) ;
 int SSL_set_post_handshake_auth (int *,int) ;
 int SSL_shutdown (int *) ;
 int TEST_int_eq (int,scalar_t__) ;
 int TEST_true (int ) ;
 int check_resumption (int,int *,int *,int) ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int do_cache ;
 scalar_t__ new_called ;
 int post_handshake_verify (int *,int *) ;
 int ** sesscache ;
 int setup_ticket_test (int,int,int **,int **) ;

__attribute__((used)) static int test_tickets(int stateful, int idx)
{
    SSL_CTX *sctx = ((void*)0), *cctx = ((void*)0);
    SSL *serverssl = ((void*)0), *clientssl = ((void*)0);
    int testresult = 0;
    size_t j;



    new_called = 0;
    do_cache = 1;

    if (!setup_ticket_test(stateful, idx, &sctx, &cctx))
        goto end;

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl,
                                          &clientssl, ((void*)0), ((void*)0))))
        goto end;

    if (!TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE))

            || !TEST_int_eq(idx, new_called))
        goto end;

    SSL_shutdown(clientssl);
    SSL_shutdown(serverssl);
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);
    clientssl = serverssl = ((void*)0);
    sctx = cctx = ((void*)0);
    do_cache = 0;

    if (!setup_ticket_test(stateful, idx, &sctx, &cctx))
        goto end;

    if (!check_resumption(idx, sctx, cctx, 0))
        goto end;


    new_called = 0;
    do_cache = 1;
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);
    sctx = cctx = ((void*)0);

    if (!setup_ticket_test(stateful, idx, &sctx, &cctx))
        goto end;

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl,
                                          &clientssl, ((void*)0), ((void*)0))))
        goto end;

    SSL_set_post_handshake_auth(clientssl, 1);

    if (!TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE))

            || !TEST_int_eq(idx, new_called))
        goto end;


    if (!post_handshake_verify(serverssl, clientssl)
            || !TEST_int_eq(idx * 2, new_called))
        goto end;

    SSL_shutdown(clientssl);
    SSL_shutdown(serverssl);
    SSL_free(serverssl);
    SSL_free(clientssl);
    serverssl = clientssl = ((void*)0);


    do_cache = 0;





    if (!check_resumption(idx, sctx, cctx, 1))
        goto end;

    testresult = 1;

 end:
    SSL_free(serverssl);
    SSL_free(clientssl);
    for (j = 0; j < OSSL_NELEM(sesscache); j++) {
        SSL_SESSION_free(sesscache[j]);
        sesscache[j] = ((void*)0);
    }
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);

    return testresult;
}
