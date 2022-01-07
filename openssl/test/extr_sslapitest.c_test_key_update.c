
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SSL_CTX ;
typedef int SSL ;


 int NUM_KEY_UPDATE_MESSAGES ;
 int SSL_CTX_free (int *) ;
 int SSL_ERROR_NONE ;
 int SSL_KEY_UPDATE_NOT_REQUESTED ;
 int SSL_KEY_UPDATE_REQUESTED ;
 int SSL_do_handshake (int *) ;
 int SSL_free (int *) ;
 int SSL_key_update (int *,int ) ;
 int SSL_read (int *,char*,int) ;
 int SSL_write (int *,char*,int ) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_true (int ) ;
 int TLS1_3_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int privkey ;
 int strlen (char*) ;

__attribute__((used)) static int test_key_update(void)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0, i, j;
    char buf[20];
    static char *mess = "A test message";

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(),
                                       TLS_client_method(),
                                       TLS1_3_VERSION,
                                       0,
                                       &sctx, &cctx, cert, privkey))
            || !TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                             ((void*)0), ((void*)0)))
            || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    for (j = 0; j < 2; j++) {

        for (i = 0; i < NUM_KEY_UPDATE_MESSAGES; i++) {
            if (!TEST_true(SSL_key_update(clientssl,
                                          (j == 0)
                                          ? SSL_KEY_UPDATE_NOT_REQUESTED
                                          : SSL_KEY_UPDATE_REQUESTED))
                    || !TEST_true(SSL_do_handshake(clientssl)))
                goto end;
        }


        if (!TEST_int_eq(SSL_write(clientssl, mess, strlen(mess)), strlen(mess))
                || !TEST_int_eq(SSL_read(serverssl, buf, sizeof(buf)),
                                         strlen(mess)))
            goto end;

        if (!TEST_int_eq(SSL_write(serverssl, mess, strlen(mess)), strlen(mess))
                || !TEST_int_eq(SSL_read(clientssl, buf, sizeof(buf)),
                                         strlen(mess)))
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
