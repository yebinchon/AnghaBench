
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sess_id_ctx ;
typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_free (int *) ;
 int SSL_CTX_sess_set_new_cb (int *,int ) ;
 int SSL_CTX_set_psk_find_session_callback (int *,int ) ;
 int SSL_CTX_set_psk_use_session_callback (int *,int ) ;
 int SSL_CTX_set_session_cache_mode (int *,int) ;
 int SSL_CTX_set_session_id_context (int *,void*,int) ;
 int SSL_ERROR_NONE ;
 int SSL_SESSION_free (int *) ;
 int SSL_SESSION_up_ref (int *) ;
 int SSL_SESS_CACHE_CLIENT ;
 int SSL_SESS_CACHE_NO_INTERNAL_STORE ;
 int SSL_free (int *) ;
 int TEST_int_eq (int,scalar_t__) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int * clientpsk ;
 int * create_a_psk (int *) ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int *,int *) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int find_session_cb ;
 scalar_t__ find_session_cb_cnt ;
 scalar_t__ new_called ;
 int new_session_cb ;
 int pskid ;
 int * serverpsk ;
 int srvid ;
 int use_session_cb ;
 scalar_t__ use_session_cb_cnt ;

__attribute__((used)) static int test_psk_tickets(void)
{
    SSL_CTX *sctx = ((void*)0), *cctx = ((void*)0);
    SSL *serverssl = ((void*)0), *clientssl = ((void*)0);
    int testresult = 0;
    int sess_id_ctx = 1;

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(), TLS_client_method(),
                                       TLS1_VERSION, 0, &sctx,
                                       &cctx, ((void*)0), ((void*)0)))
            || !TEST_true(SSL_CTX_set_session_id_context(sctx,
                                                         (void *)&sess_id_ctx,
                                                         sizeof(sess_id_ctx))))
        goto end;

    SSL_CTX_set_session_cache_mode(cctx, SSL_SESS_CACHE_CLIENT
                                         | SSL_SESS_CACHE_NO_INTERNAL_STORE);
    SSL_CTX_set_psk_use_session_callback(cctx, use_session_cb);
    SSL_CTX_set_psk_find_session_callback(sctx, find_session_cb);
    SSL_CTX_sess_set_new_cb(cctx, new_session_cb);
    use_session_cb_cnt = 0;
    find_session_cb_cnt = 0;
    srvid = pskid;
    new_called = 0;

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                      ((void*)0), ((void*)0))))
        goto end;
    clientpsk = serverpsk = create_a_psk(clientssl);
    if (!TEST_ptr(clientpsk))
        goto end;
    SSL_SESSION_up_ref(clientpsk);

    if (!TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE))
            || !TEST_int_eq(1, find_session_cb_cnt)
            || !TEST_int_eq(1, use_session_cb_cnt)

            || !TEST_int_eq(1, new_called))
        goto end;

    testresult = 1;

 end:
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);
    SSL_SESSION_free(clientpsk);
    SSL_SESSION_free(serverpsk);
    clientpsk = serverpsk = ((void*)0);

    return testresult;
}
