
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ certnum; scalar_t__ expected_prot; int cipher; } ;
typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_cipher_list (int *,int ) ;
 int SSL_ERROR_NONE ;
 int SSL_free (int *) ;
 int SSL_version (int *) ;
 int TEST_false (int ) ;
 int TEST_int_eq (int ,scalar_t__) ;
 int TEST_true (int ) ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert1 ;
 int cert2 ;
 TYPE_1__* ciphers ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int privkey1 ;
 int privkey2 ;

__attribute__((used)) static int test_tls13(int idx)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0;

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(),
                                       TLS_client_method(),
                                       TLS1_VERSION,
                                       0,
                                       &sctx, &cctx,
                                       ciphers[idx].certnum == 0 ? cert1
                                                                 : cert2,
                                       ciphers[idx].certnum == 0 ? privkey1
                                                                 : privkey2)))
        goto end;

    if (!TEST_true(SSL_CTX_set_cipher_list(cctx, ciphers[idx].cipher))
            || !TEST_true(SSL_CTX_set_cipher_list(sctx, ciphers[idx].cipher))
            || !TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                             ((void*)0), ((void*)0))))
        goto end;

    if (ciphers[idx].expected_prot == 0) {
        if (!TEST_false(create_ssl_connection(serverssl, clientssl,
                                              SSL_ERROR_NONE)))
            goto end;
    } else {
        if (!TEST_true(create_ssl_connection(serverssl, clientssl,
                                             SSL_ERROR_NONE))
                || !TEST_int_eq(SSL_version(clientssl),
                                ciphers[idx].expected_prot))
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
