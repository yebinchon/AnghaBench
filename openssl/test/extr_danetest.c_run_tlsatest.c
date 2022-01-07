
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (int ,char*) ;
 int CAfile ;
 int EVP_sha256 () ;
 int EVP_sha512 () ;
 int SSL_CTX_dane_enable (int *) ;
 int SSL_CTX_dane_mtype_set (int *,int ,int,int) ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_load_verify_file (int *,int ) ;
 int * SSL_CTX_new (int ) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int TLS_client_method () ;
 int basedomain ;
 int test_tlsafile (int *,int ,int *,int ) ;
 int tlsafile ;

__attribute__((used)) static int run_tlsatest(void)
{
    SSL_CTX *ctx = ((void*)0);
    BIO *f = ((void*)0);
    int ret = 0;

    if (!TEST_ptr(f = BIO_new_file(tlsafile, "r"))
            || !TEST_ptr(ctx = SSL_CTX_new(TLS_client_method()))
            || !TEST_int_gt(SSL_CTX_dane_enable(ctx), 0)
            || !TEST_true(SSL_CTX_load_verify_file(ctx, CAfile))
            || !TEST_int_gt(SSL_CTX_dane_mtype_set(ctx, EVP_sha512(), 2, 1),
                            0)
            || !TEST_int_gt(SSL_CTX_dane_mtype_set(ctx, EVP_sha256(), 1, 2),
                            0)
            || !TEST_int_gt(test_tlsafile(ctx, basedomain, f, tlsafile), 0))
        goto end;
    ret = 1;

end:
    BIO_free(f);
    SSL_CTX_free(ctx);

    return ret;
}
