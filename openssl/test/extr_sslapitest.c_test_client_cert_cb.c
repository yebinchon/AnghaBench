
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_client_cert_cb (int *,int ) ;
 int SSL_CTX_set_verify (int *,int,int ) ;
 int SSL_ERROR_NONE ;
 int SSL_VERIFY_FAIL_IF_NO_PEER_CERT ;
 int SSL_VERIFY_PEER ;
 int SSL_free (int *) ;
 int TEST_true (int ) ;
 int TLS1_2_VERSION ;
 int TLS1_3_VERSION ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int client_cert_cb ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int privkey ;
 int verify_cb ;

__attribute__((used)) static int test_client_cert_cb(int tst)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0;
    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(),
                                       TLS_client_method(),
                                       TLS1_VERSION,
                                       tst == 0 ? TLS1_2_VERSION
                                                : TLS1_3_VERSION,
                                       &sctx, &cctx, cert, privkey)))
        goto end;





    SSL_CTX_set_client_cert_cb(cctx, client_cert_cb);
    SSL_CTX_set_verify(sctx,
                       SSL_VERIFY_PEER | SSL_VERIFY_FAIL_IF_NO_PEER_CERT,
                       verify_cb);

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                      ((void*)0), ((void*)0)))
            || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    testresult = 1;

 end:
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);

    return testresult;
}
