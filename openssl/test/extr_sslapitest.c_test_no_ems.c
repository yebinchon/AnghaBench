
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_options (int *,int ) ;
 int SSL_ERROR_NONE ;
 int SSL_OP_NO_EXTENDED_MASTER_SECRET ;
 int SSL_free (int *) ;
 scalar_t__ SSL_get_extms_support (int *) ;
 int TLS1_2_VERSION ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int printf (char*) ;
 int privkey ;

__attribute__((used)) static int test_no_ems(void)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0;

    if (!create_ssl_ctx_pair(TLS_server_method(), TLS_client_method(),
                             TLS1_VERSION, TLS1_2_VERSION,
                             &sctx, &cctx, cert, privkey)) {
        printf("Unable to create SSL_CTX pair\n");
        goto end;
    }

    SSL_CTX_set_options(sctx, SSL_OP_NO_EXTENDED_MASTER_SECRET);

    if (!create_ssl_objects(sctx, cctx, &serverssl, &clientssl, ((void*)0), ((void*)0))) {
        printf("Unable to create SSL objects\n");
        goto end;
    }

    if (!create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE)) {
        printf("Creating SSL connection failed\n");
        goto end;
    }

    if (SSL_get_extms_support(serverssl)) {
        printf("Server reports Extended Master Secret support\n");
        goto end;
    }

    if (SSL_get_extms_support(clientssl)) {
        printf("Client reports Extended Master Secret support\n");
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
