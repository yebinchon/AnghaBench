
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int SSL_CTX ;
typedef int SSL ;


 int SSL3_RT_MAX_PLAIN_LENGTH ;
 int SSL_CTX_set_max_early_data (int *,int ) ;
 int SSL_CTX_set_psk_find_session_callback (int *,int ) ;
 int SSL_CTX_set_psk_use_session_callback (int *,int ) ;
 int SSL_CTX_set_read_ahead (int *,int) ;
 int SSL_ERROR_NONE ;
 int SSL_SESSION_free (int *) ;
 int SSL_SESSION_set_max_early_data (int *,int) ;
 int SSL_SESSION_up_ref (int *) ;
 int SSL_free (int *) ;
 int * SSL_get1_session (int *) ;
 int SSL_set_session (int *,int *) ;
 int SSL_set_tlsext_host_name (int *,char*) ;
 int SSL_shutdown (int *) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int * clientpsk ;
 int * create_a_psk (int *) ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int find_session_cb ;
 scalar_t__ find_session_cb_cnt ;
 int privkey ;
 int pskid ;
 int * serverpsk ;
 int srvid ;
 int use_session_cb ;
 scalar_t__ use_session_cb_cnt ;

__attribute__((used)) static int setupearly_data_test(SSL_CTX **cctx, SSL_CTX **sctx, SSL **clientssl,
                                SSL **serverssl, SSL_SESSION **sess, int idx)
{
    if (*sctx == ((void*)0)
            && !TEST_true(create_ssl_ctx_pair(TLS_server_method(),
                                              TLS_client_method(),
                                              TLS1_VERSION, 0,
                                              sctx, cctx, cert, privkey)))
        return 0;

    if (!TEST_true(SSL_CTX_set_max_early_data(*sctx, SSL3_RT_MAX_PLAIN_LENGTH)))
        return 0;

    if (idx == 1) {

        SSL_CTX_set_read_ahead(*cctx, 1);
        SSL_CTX_set_read_ahead(*sctx, 1);
    } else if (idx == 2) {

        SSL_CTX_set_psk_use_session_callback(*cctx, use_session_cb);
        SSL_CTX_set_psk_find_session_callback(*sctx, find_session_cb);
        use_session_cb_cnt = 0;
        find_session_cb_cnt = 0;
        srvid = pskid;
    }

    if (!TEST_true(create_ssl_objects(*sctx, *cctx, serverssl, clientssl,
                                      ((void*)0), ((void*)0))))
        return 0;







    if (idx == 1
            && !TEST_true(SSL_set_tlsext_host_name(*clientssl, "localhost")))
        return 0;

    if (idx == 2) {
        clientpsk = create_a_psk(*clientssl);
        if (!TEST_ptr(clientpsk)




                || !TEST_true(SSL_SESSION_set_max_early_data(clientpsk,
                                                             0x100))
                || !TEST_true(SSL_SESSION_up_ref(clientpsk))) {
            SSL_SESSION_free(clientpsk);
            clientpsk = ((void*)0);
            return 0;
        }
        serverpsk = clientpsk;

        if (sess != ((void*)0)) {
            if (!TEST_true(SSL_SESSION_up_ref(clientpsk))) {
                SSL_SESSION_free(clientpsk);
                SSL_SESSION_free(serverpsk);
                clientpsk = serverpsk = ((void*)0);
                return 0;
            }
            *sess = clientpsk;
        }
        return 1;
    }

    if (sess == ((void*)0))
        return 1;

    if (!TEST_true(create_ssl_connection(*serverssl, *clientssl,
                                         SSL_ERROR_NONE)))
        return 0;

    *sess = SSL_get1_session(*clientssl);
    SSL_shutdown(*clientssl);
    SSL_shutdown(*serverssl);
    SSL_free(*serverssl);
    SSL_free(*clientssl);
    *serverssl = *clientssl = ((void*)0);

    if (!TEST_true(create_ssl_objects(*sctx, *cctx, serverssl,
                                      clientssl, ((void*)0), ((void*)0)))
            || !TEST_true(SSL_set_session(*clientssl, *sess)))
        return 0;

    return 1;
}
