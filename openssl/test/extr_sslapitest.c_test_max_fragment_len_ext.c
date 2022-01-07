
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 int SSL_CTX_free (int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_tlsext_max_fragment_length (int *,int) ;
 int SSL_connect (int *) ;
 int SSL_free (int *) ;
 int * SSL_new (int *) ;
 int SSL_set_bio (int *,int *,int *) ;
 int SSL_set_connect_state (int *) ;
 int TEST_int_le (int ,int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int) ;
 int TLS_method () ;
 int get_MFL_from_client_hello (int *,int*) ;
 int* max_fragment_len_test ;

__attribute__((used)) static int test_max_fragment_len_ext(int idx_tst)
{
    SSL_CTX *ctx;
    SSL *con = ((void*)0);
    int testresult = 0, MFL_mode = 0;
    BIO *rbio, *wbio;

    ctx = SSL_CTX_new(TLS_method());
    if (!TEST_ptr(ctx))
        goto end;

    if (!TEST_true(SSL_CTX_set_tlsext_max_fragment_length(
                   ctx, max_fragment_len_test[idx_tst])))
        goto end;

    con = SSL_new(ctx);
    if (!TEST_ptr(con))
        goto end;

    rbio = BIO_new(BIO_s_mem());
    wbio = BIO_new(BIO_s_mem());
    if (!TEST_ptr(rbio)|| !TEST_ptr(wbio)) {
        BIO_free(rbio);
        BIO_free(wbio);
        goto end;
    }

    SSL_set_bio(con, rbio, wbio);
    SSL_set_connect_state(con);

    if (!TEST_int_le(SSL_connect(con), 0)) {

        goto end;
    }

    if (!TEST_true(get_MFL_from_client_hello(wbio, &MFL_mode)))

        goto end;
    if (!TEST_true(max_fragment_len_test[idx_tst] == MFL_mode))
        goto end;

    testresult = 1;

end:
    SSL_free(con);
    SSL_CTX_free(ctx);

    return testresult;
}
