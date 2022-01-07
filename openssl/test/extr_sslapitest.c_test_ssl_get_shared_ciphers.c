
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
struct TYPE_2__ {int shared; int * srvrtls13ciphers; int srvrciphers; int * clnttls13ciphers; int clntciphers; int maxprot; } ;
typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_cipher_list (int *,int ) ;
 int SSL_CTX_set_ciphersuites (int *,int *) ;
 int SSL_ERROR_NONE ;
 int SSL_free (int *) ;
 int SSL_get_shared_ciphers (int *,char*,int) ;
 int TEST_info (char*,char*) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_ptr (int ) ;
 int TEST_true (int ) ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int privkey ;
 TYPE_1__* shared_ciphers_data ;
 int strcmp (char*,int ) ;

__attribute__((used)) static int test_ssl_get_shared_ciphers(int tst)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0;
    char buf[1024];

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(),
                                       TLS_client_method(),
                                       TLS1_VERSION,
                                       shared_ciphers_data[tst].maxprot,
                                       &sctx, &cctx, cert, privkey)))
        goto end;

    if (!TEST_true(SSL_CTX_set_cipher_list(cctx,
                                        shared_ciphers_data[tst].clntciphers))
            || (shared_ciphers_data[tst].clnttls13ciphers != ((void*)0)
                && !TEST_true(SSL_CTX_set_ciphersuites(cctx,
                                    shared_ciphers_data[tst].clnttls13ciphers)))
            || !TEST_true(SSL_CTX_set_cipher_list(sctx,
                                        shared_ciphers_data[tst].srvrciphers))
            || (shared_ciphers_data[tst].srvrtls13ciphers != ((void*)0)
                && !TEST_true(SSL_CTX_set_ciphersuites(sctx,
                                    shared_ciphers_data[tst].srvrtls13ciphers))))
        goto end;


    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                             ((void*)0), ((void*)0)))
            || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    if (!TEST_ptr(SSL_get_shared_ciphers(serverssl, buf, sizeof(buf)))
            || !TEST_int_eq(strcmp(buf, shared_ciphers_data[tst].shared), 0)) {
        TEST_info("Shared ciphers are: %s\n", buf);
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
