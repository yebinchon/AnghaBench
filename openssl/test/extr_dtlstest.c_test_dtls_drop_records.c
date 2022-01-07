
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 scalar_t__ BIO_ctrl (int *,int ,int,int *) ;
 int * BIO_new (int ) ;
 int * BIO_next (int *) ;
 int CLI_TO_SRV_EPOCH_0_RECS ;
 int CLI_TO_SRV_EPOCH_1_RECS ;
 int CLI_TO_SRV_RESUME_EPOCH_0_RECS ;
 int CLI_TO_SRV_RESUME_EPOCH_1_RECS ;
 int DTLS1_VERSION ;
 int DTLS_client_method () ;
 int DTLS_server_method () ;
 int DTLS_set_timer_cb (int *,int ) ;
 int MEMPACKET_CTRL_GET_DROP_REC ;
 int MEMPACKET_CTRL_SET_DROP_EPOCH ;
 int MEMPACKET_CTRL_SET_DROP_REC ;
 int SRV_TO_CLI_EPOCH_0_RECS ;
 int SRV_TO_CLI_RESUME_EPOCH_0_RECS ;
 int SSL_CTX_free (int *) ;
 int SSL_ERROR_NONE ;
 int SSL_SESSION_free (int *) ;
 int SSL_free (int *) ;
 int * SSL_get1_session (int *) ;
 int * SSL_get_wbio (int *) ;
 int SSL_session_reused (int *) ;
 int SSL_set_session (int *,int *) ;
 int SSL_shutdown (int *) ;
 int TEST_int_eq (int,int) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int TOTAL_FULL_HAND_RECORDS ;
 int bio_f_tls_dump_filter () ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int privkey ;
 int timer_cb ;

__attribute__((used)) static int test_dtls_drop_records(int idx)
{
    SSL_CTX *sctx = ((void*)0), *cctx = ((void*)0);
    SSL *serverssl = ((void*)0), *clientssl = ((void*)0);
    BIO *c_to_s_fbio, *mempackbio;
    int testresult = 0;
    int epoch = 0;
    SSL_SESSION *sess = ((void*)0);
    int cli_to_srv_epoch0, cli_to_srv_epoch1, srv_to_cli_epoch0;

    if (!TEST_true(create_ssl_ctx_pair(DTLS_server_method(),
                                       DTLS_client_method(),
                                       DTLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        return 0;

    if (idx >= TOTAL_FULL_HAND_RECORDS) {

        if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                          ((void*)0), ((void*)0)))
                || !TEST_true(create_ssl_connection(serverssl, clientssl,
                              SSL_ERROR_NONE))
                || !TEST_ptr(sess = SSL_get1_session(clientssl)))
            goto end;

        SSL_shutdown(clientssl);
        SSL_shutdown(serverssl);
        SSL_free(serverssl);
        SSL_free(clientssl);
        serverssl = clientssl = ((void*)0);

        cli_to_srv_epoch0 = CLI_TO_SRV_RESUME_EPOCH_0_RECS;
        cli_to_srv_epoch1 = CLI_TO_SRV_RESUME_EPOCH_1_RECS;
        srv_to_cli_epoch0 = SRV_TO_CLI_RESUME_EPOCH_0_RECS;
        idx -= TOTAL_FULL_HAND_RECORDS;
    } else {
        cli_to_srv_epoch0 = CLI_TO_SRV_EPOCH_0_RECS;
        cli_to_srv_epoch1 = CLI_TO_SRV_EPOCH_1_RECS;
        srv_to_cli_epoch0 = SRV_TO_CLI_EPOCH_0_RECS;
    }

    c_to_s_fbio = BIO_new(bio_f_tls_dump_filter());
    if (!TEST_ptr(c_to_s_fbio))
        goto end;


    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                      ((void*)0), c_to_s_fbio)))
        goto end;

    if (sess != ((void*)0)) {
        if (!TEST_true(SSL_set_session(clientssl, sess)))
            goto end;
    }

    DTLS_set_timer_cb(clientssl, timer_cb);
    DTLS_set_timer_cb(serverssl, timer_cb);


    if (idx >= cli_to_srv_epoch0 + cli_to_srv_epoch1) {
        mempackbio = SSL_get_wbio(serverssl);
        idx -= cli_to_srv_epoch0 + cli_to_srv_epoch1;
        if (idx >= srv_to_cli_epoch0) {
            epoch = 1;
            idx -= srv_to_cli_epoch0;
        }
    } else {
        mempackbio = SSL_get_wbio(clientssl);
        if (idx >= cli_to_srv_epoch0) {
            epoch = 1;
            idx -= cli_to_srv_epoch0;
        }
         mempackbio = BIO_next(mempackbio);
    }
    BIO_ctrl(mempackbio, MEMPACKET_CTRL_SET_DROP_EPOCH, epoch, ((void*)0));
    BIO_ctrl(mempackbio, MEMPACKET_CTRL_SET_DROP_REC, idx, ((void*)0));

    if (!TEST_true(create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE)))
        goto end;

    if (sess != ((void*)0) && !TEST_true(SSL_session_reused(clientssl)))
        goto end;


    if (!TEST_int_eq((int)BIO_ctrl(mempackbio, MEMPACKET_CTRL_GET_DROP_REC, 0,
                                   ((void*)0)), -1))
        goto end;

    testresult = 1;
 end:
    SSL_SESSION_free(sess);
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);

    return testresult;
}
