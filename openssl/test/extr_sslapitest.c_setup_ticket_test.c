
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sess_id_ctx ;
typedef int SSL_CTX ;


 int SSL_CTX_sess_set_new_cb (int *,int ) ;
 int SSL_CTX_set_num_tickets (int *,int) ;
 int SSL_CTX_set_options (int *,int ) ;
 int SSL_CTX_set_session_cache_mode (int *,int) ;
 int SSL_CTX_set_session_id_context (int *,void*,int) ;
 int SSL_OP_NO_TICKET ;
 int SSL_SESS_CACHE_CLIENT ;
 int SSL_SESS_CACHE_NO_INTERNAL_STORE ;
 int TEST_true (int ) ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int new_cachesession_cb ;
 int privkey ;

__attribute__((used)) static int setup_ticket_test(int stateful, int idx, SSL_CTX **sctx,
                             SSL_CTX **cctx)
{
    int sess_id_ctx = 1;

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(), TLS_client_method(),
                                       TLS1_VERSION, 0, sctx,
                                       cctx, cert, privkey))
            || !TEST_true(SSL_CTX_set_num_tickets(*sctx, idx))
            || !TEST_true(SSL_CTX_set_session_id_context(*sctx,
                                                         (void *)&sess_id_ctx,
                                                         sizeof(sess_id_ctx))))
        return 0;

    if (stateful)
        SSL_CTX_set_options(*sctx, SSL_OP_NO_TICKET);

    SSL_CTX_set_session_cache_mode(*cctx, SSL_SESS_CACHE_CLIENT
                                          | SSL_SESS_CACHE_NO_INTERNAL_STORE);
    SSL_CTX_sess_set_new_cb(*cctx, new_cachesession_cb);

    return 1;
}
