
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_free (int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_cert_cb (int *,int ,int *) ;
 int SSL_ERROR_NONE ;
 int SSL_free (int *) ;
 int SSL_set1_sigalgs_list (int *,char*) ;
 int TEST_int_eq (int,int ) ;
 int TEST_true (int) ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert_cb ;
 int cert_cb_cnt ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int,int **,int **,int *,int *) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;

__attribute__((used)) static int test_cert_cb_int(int prot, int tst)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0), *snictx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0, ret;







    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(),
                                       TLS_client_method(),
                                       TLS1_VERSION,
                                       prot,
                                       &sctx, &cctx, ((void*)0), ((void*)0))))
        goto end;

    if (tst == 0)
        cert_cb_cnt = -1;
    else if (tst >= 3)
        cert_cb_cnt = 3;
    else
        cert_cb_cnt = 0;

    if (tst == 2)
        snictx = SSL_CTX_new(TLS_server_method());
    SSL_CTX_set_cert_cb(sctx, cert_cb, snictx);

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                      ((void*)0), ((void*)0))))
        goto end;

    if (tst == 4) {




        if (!TEST_true(SSL_set1_sigalgs_list(clientssl,
                                             "ecdsa_secp256r1_sha256")))
            goto end;
    } else if (tst == 5) {




        if (!TEST_true(SSL_set1_sigalgs_list(clientssl,
                           "rsa_pss_rsae_sha256:rsa_pkcs1_sha256")))
            goto end;
    }

    ret = create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE);
    if (!TEST_true(tst == 0 || tst == 4 || tst == 5 ? !ret : ret)
            || (tst > 0
                && !TEST_int_eq((cert_cb_cnt - 2) * (cert_cb_cnt - 3), 0))) {
        goto end;
    }

    testresult = 1;

 end:
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);
    SSL_CTX_free(snictx);

    return testresult;
}
