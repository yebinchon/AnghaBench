
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg ;
typedef int buf ;
typedef int SSL_SESSION ;
typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_post_handshake_auth (int *,int) ;
 int SSL_ERROR_NONE ;
 int SSL_ERROR_SSL ;
 int SSL_ERROR_ZERO_RETURN ;
 int SSL_KEY_UPDATE_REQUESTED ;
 int SSL_RECEIVED_SHUTDOWN ;
 int SSL_SESSION_is_resumable (int *) ;
 int SSL_VERIFY_PEER ;
 int SSL_free (int *) ;
 int SSL_get_error (int *,int) ;
 int * SSL_get_session (int *) ;
 int SSL_get_shutdown (int *) ;
 int SSL_key_update (int *,int ) ;
 int SSL_read_ex (int *,char*,int,size_t*) ;
 int SSL_set_verify (int *,int ,int *) ;
 int SSL_shutdown (int *) ;
 int SSL_verify_client_post_handshake (int *) ;
 int SSL_write (int *,char*,int) ;
 int SSL_write_ex (int *,char*,int,size_t*) ;
 int TEST_false (int ) ;
 int TEST_int_eq (int ,int) ;
 int TEST_ptr_ne (int *,int *) ;
 int TEST_size_t_eq (size_t,int) ;
 int TEST_true (int ) ;
 int TLS1_2_VERSION ;
 int TLS1_3_VERSION ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int create_bare_ssl_connection (int *,int *,int ,int) ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int memcmp (char*,char*,size_t) ;
 int privkey ;

__attribute__((used)) static int test_shutdown(int tst)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0;
    char msg[] = "A test message";
    char buf[80];
    size_t written, readbytes;
    SSL_SESSION *sess;
    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(),
                                       TLS_client_method(),
                                       TLS1_VERSION,
                                       (tst <= 1) ? TLS1_2_VERSION
                                                  : TLS1_3_VERSION,
                                       &sctx, &cctx, cert, privkey)))
        goto end;

    if (tst == 5)
        SSL_CTX_set_post_handshake_auth(cctx, 1);

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                             ((void*)0), ((void*)0))))
        goto end;

    if (tst == 3) {
        if (!TEST_true(create_bare_ssl_connection(serverssl, clientssl,
                                                  SSL_ERROR_NONE, 1))
                || !TEST_ptr_ne(sess = SSL_get_session(clientssl), ((void*)0))
                || !TEST_false(SSL_SESSION_is_resumable(sess)))
            goto end;
    } else if (!TEST_true(create_ssl_connection(serverssl, clientssl,
                                              SSL_ERROR_NONE))
            || !TEST_ptr_ne(sess = SSL_get_session(clientssl), ((void*)0))
            || !TEST_true(SSL_SESSION_is_resumable(sess))) {
        goto end;
    }

    if (!TEST_int_eq(SSL_shutdown(clientssl), 0))
        goto end;

    if (tst >= 4) {




        if (!TEST_false(SSL_read_ex(serverssl, buf, sizeof(buf), &readbytes))
                || !TEST_int_eq(SSL_get_error(serverssl, 0),
                                SSL_ERROR_ZERO_RETURN)
                || !TEST_int_eq(SSL_get_shutdown(serverssl),
                                SSL_RECEIVED_SHUTDOWN)




                || !TEST_true(SSL_write(serverssl, msg, sizeof(msg))))
            goto end;
        if (tst == 4
                && !TEST_true(SSL_key_update(serverssl,
                                             SSL_KEY_UPDATE_REQUESTED)))
            goto end;
        if (tst == 5) {
            SSL_set_verify(serverssl, SSL_VERIFY_PEER, ((void*)0));
            if (!TEST_true(SSL_verify_client_post_handshake(serverssl)))
                goto end;
        }
        if ((tst == 4 || tst == 5)
                && !TEST_true(SSL_write(serverssl, msg, sizeof(msg))))
            goto end;
        if (!TEST_int_eq(SSL_shutdown(serverssl), 1))
            goto end;
        if (tst == 4 || tst == 5) {

            if (!TEST_true(SSL_read_ex(clientssl, buf, sizeof(buf),
                                       &readbytes))
                    || !TEST_size_t_eq(readbytes, sizeof(msg))
                    || !TEST_int_eq(memcmp(msg, buf, readbytes), 0)
                    || !TEST_true(SSL_read_ex(clientssl, buf, sizeof(buf),
                                              &readbytes))
                    || !TEST_size_t_eq(readbytes, sizeof(msg))
                    || !TEST_int_eq(memcmp(msg, buf, readbytes), 0))
                goto end;
        }
    }


    if (!TEST_false(SSL_write_ex(clientssl, msg, sizeof(msg), &written)))
        goto end;

    if (tst < 4) {





        if (!TEST_int_eq(SSL_shutdown(serverssl), 0)




                || !TEST_false(SSL_write_ex(serverssl, msg, sizeof(msg), &written))
                || !TEST_int_eq(SSL_shutdown(clientssl), 1)
                || !TEST_ptr_ne(sess = SSL_get_session(clientssl), ((void*)0))
                || !TEST_true(SSL_SESSION_is_resumable(sess))
                || !TEST_int_eq(SSL_shutdown(serverssl), 1))
            goto end;
    } else if (tst == 4 || tst == 5) {





        if (!TEST_int_eq(SSL_shutdown(clientssl), 1)
                || !TEST_ptr_ne(sess = SSL_get_session(clientssl), ((void*)0))
                || !TEST_true(SSL_SESSION_is_resumable(sess)))
            goto end;
    } else {







        if (!TEST_int_eq(SSL_shutdown(clientssl), -1)
                || !TEST_int_eq(SSL_get_error(clientssl, -1), SSL_ERROR_SSL))
            goto end;
    }

    testresult = 1;

 end:
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);

    return testresult;
}
