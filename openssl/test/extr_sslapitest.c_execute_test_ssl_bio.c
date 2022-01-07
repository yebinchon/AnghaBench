
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bio_change_t ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 int BIO_CLOSE ;
 int BIO_f_ssl () ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_pop (int *) ;
 int BIO_push (int *,int *) ;
 int BIO_s_mem () ;
 int BIO_set_ssl (int *,int *,int ) ;
 scalar_t__ CHANGE_RBIO ;
 scalar_t__ NO_BIO_CHANGE ;
 int SSL_CTX_free (int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_free (int *) ;
 int * SSL_new (int *) ;
 int SSL_set0_rbio (int *,int *) ;
 int SSL_set0_wbio (int *,int *) ;
 int TEST_ptr (int *) ;
 int TLS_method () ;

__attribute__((used)) static int execute_test_ssl_bio(int pop_ssl, bio_change_t change_bio)
{
    BIO *sslbio = ((void*)0), *membio1 = ((void*)0), *membio2 = ((void*)0);
    SSL_CTX *ctx;
    SSL *ssl = ((void*)0);
    int testresult = 0;

    if (!TEST_ptr(ctx = SSL_CTX_new(TLS_method()))
            || !TEST_ptr(ssl = SSL_new(ctx))
            || !TEST_ptr(sslbio = BIO_new(BIO_f_ssl()))
            || !TEST_ptr(membio1 = BIO_new(BIO_s_mem())))
        goto end;

    BIO_set_ssl(sslbio, ssl, BIO_CLOSE);





    BIO_push(sslbio, membio1);


    if (change_bio != NO_BIO_CHANGE) {
        if (!TEST_ptr(membio2 = BIO_new(BIO_s_mem())))
            goto end;
        if (change_bio == CHANGE_RBIO)
            SSL_set0_rbio(ssl, membio2);
        else
            SSL_set0_wbio(ssl, membio2);
    }
    ssl = ((void*)0);

    if (pop_ssl)
        BIO_pop(sslbio);
    else
        BIO_pop(membio1);

    testresult = 1;
 end:
    BIO_free(membio1);
    BIO_free(sslbio);
    SSL_free(ssl);
    SSL_CTX_free(ctx);

    return testresult;
}
