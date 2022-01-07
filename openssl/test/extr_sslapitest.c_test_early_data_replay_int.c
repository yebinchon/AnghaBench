
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SSL_SESSION ;
typedef int SSL_CTX ;
typedef int SSL_CONF_CTX ;
typedef int SSL ;


 int MSG1 ;
 int SSL_CONF_CTX_free (int *) ;
 int * SSL_CONF_CTX_new () ;
 int SSL_CONF_CTX_set_flags (int *,int) ;
 int SSL_CONF_CTX_set_ssl_ctx (int *,int *) ;
 int SSL_CONF_FLAG_FILE ;
 int SSL_CONF_FLAG_SERVER ;
 scalar_t__ SSL_CONF_cmd (int *,char*,char*) ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_allow_early_data_cb (int *,int ,int*) ;
 int SSL_CTX_set_options (int *,int ) ;
 int SSL_EARLY_DATA_ACCEPTED ;
 int SSL_EARLY_DATA_REJECTED ;
 int SSL_ERROR_NONE ;
 int SSL_OP_NO_ANTI_REPLAY ;
 int SSL_READ_EARLY_DATA_FINISH ;
 int SSL_READ_EARLY_DATA_SUCCESS ;
 int SSL_SESSION_free (int *) ;
 int SSL_connect (int *) ;
 int SSL_free (int *) ;
 scalar_t__ SSL_get_early_data_status (int *) ;
 scalar_t__ SSL_read_early_data (int *,unsigned char*,int,size_t*) ;
 scalar_t__ SSL_session_reused (int *) ;
 scalar_t__ SSL_set_session (int *,int *) ;
 int SSL_shutdown (int *) ;
 scalar_t__ SSL_write_early_data (int *,int ,int ,size_t*) ;
 int TEST_int_eq (scalar_t__,int) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_mem_eq (int ,int ,unsigned char*,size_t) ;
 int TEST_ptr (int *) ;
 int TEST_size_t_eq (size_t,int ) ;
 int TEST_true (scalar_t__) ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int allow_early_data_cb ;
 scalar_t__ allow_ed_cb_called ;
 int cert ;
 int * clientpsk ;
 scalar_t__ create_ssl_connection (int *,int *,int ) ;
 scalar_t__ create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 scalar_t__ create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int privkey ;
 int * serverpsk ;
 scalar_t__ setupearly_data_test (int **,int **,int **,int **,int **,int) ;
 int strlen (int ) ;

__attribute__((used)) static int test_early_data_replay_int(int idx, int usecb, int confopt)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0;
    SSL_SESSION *sess = ((void*)0);
    size_t readbytes, written;
    unsigned char buf[20];

    allow_ed_cb_called = 0;

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(), TLS_client_method(),
                                       TLS1_VERSION, 0, &sctx,
                                       &cctx, cert, privkey)))
        return 0;

    if (usecb > 0) {
        if (confopt == 0) {
            SSL_CTX_set_options(sctx, SSL_OP_NO_ANTI_REPLAY);
        } else {
            SSL_CONF_CTX *confctx = SSL_CONF_CTX_new();

            if (!TEST_ptr(confctx))
                goto end;
            SSL_CONF_CTX_set_flags(confctx, SSL_CONF_FLAG_FILE
                                            | SSL_CONF_FLAG_SERVER);
            SSL_CONF_CTX_set_ssl_ctx(confctx, sctx);
            if (!TEST_int_eq(SSL_CONF_cmd(confctx, "Options", "-AntiReplay"),
                             2)) {
                SSL_CONF_CTX_free(confctx);
                goto end;
            }
            SSL_CONF_CTX_free(confctx);
        }
        SSL_CTX_set_allow_early_data_cb(sctx, allow_early_data_cb, &usecb);
    }

    if (!TEST_true(setupearly_data_test(&cctx, &sctx, &clientssl,
                                        &serverssl, &sess, idx)))
        goto end;





    if (!TEST_true(create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE))
            || !TEST_true(SSL_session_reused(clientssl)))
        goto end;

    SSL_shutdown(clientssl);
    SSL_shutdown(serverssl);
    SSL_free(serverssl);
    SSL_free(clientssl);
    serverssl = clientssl = ((void*)0);

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl,
                                      &clientssl, ((void*)0), ((void*)0)))
            || !TEST_true(SSL_set_session(clientssl, sess)))
        goto end;


    if (!TEST_true(SSL_write_early_data(clientssl, MSG1, strlen(MSG1),
                                        &written))
            || !TEST_size_t_eq(written, strlen(MSG1)))
        goto end;

    if (usecb <= 1) {
        if (!TEST_int_eq(SSL_read_early_data(serverssl, buf, sizeof(buf),
                                             &readbytes),
                         SSL_READ_EARLY_DATA_FINISH)




                || !TEST_int_eq(SSL_get_early_data_status(serverssl),
                                SSL_EARLY_DATA_REJECTED))
            goto end;
    } else {

        if (!TEST_int_eq(SSL_read_early_data(serverssl, buf, sizeof(buf),
                                             &readbytes),
                         SSL_READ_EARLY_DATA_SUCCESS)
                || !TEST_mem_eq(MSG1, strlen(MSG1), buf, readbytes)




                || !TEST_int_gt(SSL_connect(clientssl), 0)
                || !TEST_int_eq(SSL_read_early_data(serverssl, buf, sizeof(buf),
                                             &readbytes),
                                SSL_READ_EARLY_DATA_FINISH)
                || !TEST_int_eq(SSL_get_early_data_status(serverssl),
                                SSL_EARLY_DATA_ACCEPTED))
            goto end;
    }


    if (!TEST_true(create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE))
            || !TEST_int_eq(SSL_session_reused(clientssl), (usecb > 0) ? 1 : 0)
            || !TEST_int_eq(allow_ed_cb_called, usecb > 0 ? 1 : 0))
        goto end;

    testresult = 1;

 end:
    SSL_SESSION_free(sess);
    SSL_SESSION_free(clientpsk);
    SSL_SESSION_free(serverpsk);
    clientpsk = serverpsk = ((void*)0);
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);
    return testresult;
}
