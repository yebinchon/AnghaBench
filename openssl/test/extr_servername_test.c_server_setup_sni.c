
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_free (int *) ;
 int SSL_ERROR_NONE ;
 int SSL_free (int *) ;
 int SSL_get_servername (int *,int ) ;
 int SSL_set_tlsext_host_name (int *,int ) ;
 int TEST_ptr_null (int ) ;
 int TEST_true (int ) ;
 int TLS1_VERSION ;
 int TLSEXT_NAMETYPE_host_name ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int host ;
 int privkey ;

__attribute__((used)) static int server_setup_sni(void)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0;

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(),
                                       TLS_client_method(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey))
            || !TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                             ((void*)0), ((void*)0))))
        goto end;


    SSL_set_tlsext_host_name(serverssl, host);

    if (!TEST_true(create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE)))
        goto end;

    if (!TEST_ptr_null(SSL_get_servername(serverssl,
                                          TLSEXT_NAMETYPE_host_name))) {

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
