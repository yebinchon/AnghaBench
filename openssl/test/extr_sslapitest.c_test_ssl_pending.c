
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg ;
typedef int buf ;
typedef int SSL_CTX ;
typedef int SSL ;


 int DTLS1_VERSION ;
 int DTLS_client_method () ;
 int DTLS_server_method () ;
 int SSL_CTX_free (int *) ;
 int SSL_ERROR_NONE ;
 int SSL_free (int *) ;
 int SSL_has_pending (int *) ;
 int SSL_pending (int *) ;
 int SSL_read_ex (int *,char*,int,size_t*) ;
 int SSL_write_ex (int *,char*,int,size_t*) ;
 int TEST_false (int ) ;
 int TEST_int_eq (int ,int) ;
 int TEST_size_t_eq (size_t,int) ;
 int TEST_true (int ) ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int privkey ;

__attribute__((used)) static int test_ssl_pending(int tst)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0;
    char msg[] = "A test message";
    char buf[5];
    size_t written, readbytes;

    if (tst == 0) {
        if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(),
                                           TLS_client_method(),
                                           TLS1_VERSION, 0,
                                           &sctx, &cctx, cert, privkey)))
            goto end;
    } else {

        if (!TEST_true(create_ssl_ctx_pair(DTLS_server_method(),
                                           DTLS_client_method(),
                                           DTLS1_VERSION, 0,
                                           &sctx, &cctx, cert, privkey)))
            goto end;



    }

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                             ((void*)0), ((void*)0)))
            || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    if (!TEST_int_eq(SSL_pending(clientssl), 0)
            || !TEST_false(SSL_has_pending(clientssl))
            || !TEST_int_eq(SSL_pending(serverssl), 0)
            || !TEST_false(SSL_has_pending(serverssl))
            || !TEST_true(SSL_write_ex(serverssl, msg, sizeof(msg), &written))
            || !TEST_size_t_eq(written, sizeof(msg))
            || !TEST_true(SSL_read_ex(clientssl, buf, sizeof(buf), &readbytes))
            || !TEST_size_t_eq(readbytes, sizeof(buf))
            || !TEST_int_eq(SSL_pending(clientssl), (int)(written - readbytes))
            || !TEST_true(SSL_has_pending(clientssl)))
        goto end;

    testresult = 1;

 end:
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);

    return testresult;
}
