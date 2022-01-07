
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SSL_SESSION ;
typedef int SSL_CTX ;
typedef int SSL ;


 int MSG1 ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_info_callback (int *,int ) ;
 int SSL_EARLY_DATA_ACCEPTED ;
 int SSL_ERROR_NONE ;
 int SSL_READ_EARLY_DATA_SUCCESS ;
 int SSL_SESSION_free (int *) ;
 int SSL_free (int *) ;
 int * SSL_get1_session (int *) ;
 int SSL_get_early_data_status (int *) ;
 int SSL_read_early_data (int *,unsigned char*,int,size_t*) ;
 int SSL_session_reused (int *) ;
 int SSL_set_info_callback (int *,int ) ;
 int SSL_set_session (int *,int *) ;
 int SSL_shutdown (int *) ;
 int SSL_write_early_data (int *,int ,int ,size_t*) ;
 int TEST_false (scalar_t__) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_mem_eq (int ,size_t,unsigned char*,int ) ;
 int TEST_size_t_eq (size_t,int ) ;
 int TEST_true (int ) ;
 int TLS1_2_VERSION ;
 int TLS1_3_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int,int,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 scalar_t__ info_cb_failed ;
 int info_cb_offset ;
 int info_cb_this_state ;
 int privkey ;
 int setupearly_data_test (int **,int **,int **,int **,int **,int ) ;
 int sslapi_info_callback ;
 int strlen (int ) ;

__attribute__((used)) static int test_info_callback(int tst)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    SSL_SESSION *clntsess = ((void*)0);
    int testresult = 0;
    int tlsvers;

    if (tst < 2) {



        tlsvers = TLS1_2_VERSION;



    } else {

        tlsvers = TLS1_3_VERSION;



    }


    info_cb_failed = 0;
    info_cb_this_state = -1;
    info_cb_offset = tst;


    if (tst >= 4) {
        SSL_SESSION *sess = ((void*)0);
        size_t written, readbytes;
        unsigned char buf[80];


        if (!TEST_true(setupearly_data_test(&cctx, &sctx, &clientssl,
                                            &serverssl, &sess, 0)))
            goto end;


        SSL_SESSION_free(sess);

        SSL_set_info_callback((tst % 2) == 0 ? serverssl : clientssl,
                              sslapi_info_callback);


        if (!TEST_true(SSL_write_early_data(clientssl, MSG1, strlen(MSG1),
                                            &written))
                || !TEST_size_t_eq(written, strlen(MSG1))
                || !TEST_int_eq(SSL_read_early_data(serverssl, buf,
                                                    sizeof(buf), &readbytes),
                                SSL_READ_EARLY_DATA_SUCCESS)
                || !TEST_mem_eq(MSG1, readbytes, buf, strlen(MSG1))
                || !TEST_int_eq(SSL_get_early_data_status(serverssl),
                                SSL_EARLY_DATA_ACCEPTED)
                || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                                    SSL_ERROR_NONE))
                || !TEST_false(info_cb_failed))
            goto end;

        testresult = 1;
        goto end;
    }


    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(),
                                       TLS_client_method(),
                                       tlsvers, tlsvers, &sctx, &cctx, cert,
                                       privkey)))
        goto end;





    SSL_CTX_set_info_callback((tst % 2) == 0 ? sctx : cctx,
                              sslapi_info_callback);

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl,
                                          &clientssl, ((void*)0), ((void*)0)))
        || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                            SSL_ERROR_NONE))
        || !TEST_false(info_cb_failed))
    goto end;



    clntsess = SSL_get1_session(clientssl);
    SSL_shutdown(clientssl);
    SSL_shutdown(serverssl);
    SSL_free(serverssl);
    SSL_free(clientssl);
    serverssl = clientssl = ((void*)0);


    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl, ((void*)0),
                                      ((void*)0)))
            || !TEST_true(SSL_set_session(clientssl, clntsess))
            || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE))
            || !TEST_true(SSL_session_reused(clientssl))
            || !TEST_false(info_cb_failed))
        goto end;

    testresult = 1;

 end:
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_SESSION_free(clntsess);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);
    return testresult;
}
