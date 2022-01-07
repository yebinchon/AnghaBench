
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_up_ref (int *) ;
 int SSL_CTX_free (int *) ;
 int SSL_ERROR_NONE ;
 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int SSL_KEY_UPDATE_REQUESTED ;
 int SSL_do_handshake (int *) ;
 int SSL_free (int *) ;
 int SSL_get_error (int *,int ) ;
 int * SSL_get_wbio (int *) ;
 int SSL_key_update (int *,int ) ;
 int SSL_read (int *,char*,int) ;
 int SSL_set0_wbio (int *,int *) ;
 int SSL_write (int *,char*,int) ;
 int TEST_int_eq (int ,int) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int TLS1_3_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int bio_s_always_retry () ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int privkey ;
 int strlen (char*) ;

__attribute__((used)) static int test_key_update_in_write(int tst)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0;
    char buf[20];
    static char *mess = "A test message";
    BIO *bretry = BIO_new(bio_s_always_retry());
    BIO *tmp = ((void*)0);
    SSL *peerupdate = ((void*)0), *peerwrite = ((void*)0);

    if (!TEST_ptr(bretry)
            || !TEST_true(create_ssl_ctx_pair(TLS_server_method(),
                                              TLS_client_method(),
                                              TLS1_3_VERSION,
                                              0,
                                              &sctx, &cctx, cert, privkey))
            || !TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                             ((void*)0), ((void*)0)))
            || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    peerupdate = tst == 0 ? clientssl : serverssl;
    peerwrite = tst == 0 ? serverssl : clientssl;

    if (!TEST_true(SSL_key_update(peerupdate, SSL_KEY_UPDATE_REQUESTED))
            || !TEST_true(SSL_do_handshake(peerupdate)))
        goto end;


    tmp = SSL_get_wbio(peerwrite);
    if (!TEST_ptr(tmp) || !TEST_true(BIO_up_ref(tmp))) {
        tmp = ((void*)0);
        goto end;
    }
    SSL_set0_wbio(peerwrite, bretry);
    bretry = ((void*)0);


    if (!TEST_int_eq(SSL_write(peerwrite, mess, strlen(mess)), -1)
            || !TEST_int_eq(SSL_get_error(peerwrite, 0), SSL_ERROR_WANT_WRITE))
        goto end;


    SSL_set0_wbio(peerwrite, tmp);
    tmp = ((void*)0);


    if (!TEST_int_eq(SSL_read(peerwrite, buf, sizeof(buf)), -1)
            || !TEST_int_eq(SSL_get_error(peerwrite, 0), SSL_ERROR_WANT_READ))
        goto end;





    if (!TEST_int_eq(SSL_write(peerwrite, mess, strlen(mess)), strlen(mess))
            || !TEST_int_eq(SSL_read(peerupdate, buf, sizeof(buf)), strlen(mess)))
        goto end;


    if (!TEST_int_eq(SSL_write(peerwrite, mess, strlen(mess)), strlen(mess))
            || !TEST_int_eq(SSL_read(peerupdate, buf, sizeof(buf)), strlen(mess)))
        goto end;

    testresult = 1;

 end:
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);
    BIO_free(bretry);
    BIO_free(tmp);

    return testresult;
}
