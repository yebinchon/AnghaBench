
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
 int OPENSSL_free (char*) ;
 int SSL_CTX_free (int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_connect (int *) ;
 int SSL_free (int *) ;
 int * SSL_new (int *) ;
 int SSL_set_bio (int *,int *,int *) ;
 int SSL_set_tlsext_host_name (int *,int ) ;
 int TEST_int_le (int ,int ) ;
 int TEST_ptr (int *) ;
 int TEST_str_eq (char*,int ) ;
 int TEST_true (int ) ;
 int TLS_method () ;
 int get_sni_from_client_hello (int *,char**) ;
 int host ;

__attribute__((used)) static int client_setup_sni_before_state(void)
{
    SSL_CTX *ctx;
    SSL *con = ((void*)0);
    BIO *rbio;
    BIO *wbio;
    char *hostname = ((void*)0);
    int ret = 0;


    ctx = SSL_CTX_new(TLS_method());
    if (!TEST_ptr(ctx))
        goto end;

    con = SSL_new(ctx);
    if (!TEST_ptr(con))
        goto end;


    SSL_set_tlsext_host_name(con, host);

    rbio = BIO_new(BIO_s_mem());
    wbio = BIO_new(BIO_s_mem());
    if (!TEST_ptr(rbio)|| !TEST_ptr(wbio)) {
        BIO_free(rbio);
        BIO_free(wbio);
        goto end;
    }

    SSL_set_bio(con, rbio, wbio);

    if (!TEST_int_le(SSL_connect(con), 0))

        goto end;
    if (!TEST_true(get_sni_from_client_hello(wbio, &hostname)))

        goto end;
    if (!TEST_str_eq(hostname, host))

        goto end;
    ret = 1;
end:
    OPENSSL_free(hostname);
    SSL_free(con);
    SSL_CTX_free(ctx);
    return ret;
}
