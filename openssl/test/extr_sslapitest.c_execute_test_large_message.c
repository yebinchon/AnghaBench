
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL_METHOD ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (int ,char*) ;
 int NUM_EXTRA_CERTS ;
 int OPENSSL_assert (int) ;
 int * PEM_read_bio_X509 (int *,int *,int *,int *) ;
 int SSL3_RT_MAX_PLAIN_LENGTH ;
 int SSL_CTX_add_extra_chain_cert (int *,int *) ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_read_ahead (int *,int) ;
 int SSL_ERROR_NONE ;
 int SSL_clear (int *) ;
 int SSL_free (int *) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int X509_free (int *) ;
 int X509_up_ref (int *) ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int const*,int const*,int,int,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int i2d_X509 (int *,int *) ;
 int privkey ;

__attribute__((used)) static int execute_test_large_message(const SSL_METHOD *smeth,
                                      const SSL_METHOD *cmeth,
                                      int min_version, int max_version,
                                      int read_ahead)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0;
    int i;
    BIO *certbio = ((void*)0);
    X509 *chaincert = ((void*)0);
    int certlen;

    if (!TEST_ptr(certbio = BIO_new_file(cert, "r")))
        goto end;
    chaincert = PEM_read_bio_X509(certbio, ((void*)0), ((void*)0), ((void*)0));
    BIO_free(certbio);
    certbio = ((void*)0);
    if (!TEST_ptr(chaincert))
        goto end;

    if (!TEST_true(create_ssl_ctx_pair(smeth, cmeth, min_version, max_version,
                                       &sctx, &cctx, cert, privkey)))
        goto end;

    if (read_ahead) {




        SSL_CTX_set_read_ahead(cctx, 1);
    }
    certlen = i2d_X509(chaincert, ((void*)0));
    OPENSSL_assert(certlen * NUM_EXTRA_CERTS >
                   (SSL3_RT_MAX_PLAIN_LENGTH * 4) / 3);
    for (i = 0; i < NUM_EXTRA_CERTS; i++) {
        if (!X509_up_ref(chaincert))
            goto end;
        if (!SSL_CTX_add_extra_chain_cert(sctx, chaincert)) {
            X509_free(chaincert);
            goto end;
        }
    }

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                      ((void*)0), ((void*)0)))
            || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;





    if (!TEST_true(SSL_clear(serverssl)))
        goto end;

    testresult = 1;
 end:
    X509_free(chaincert);
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);

    return testresult;
}
