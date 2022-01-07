
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 size_t BIO_read (int *,unsigned char*,int) ;
 size_t DTLS_get_data_mtu (int *) ;
 int SSL_ERROR_NONE ;
 int SSL_OP_NO_ENCRYPT_THEN_MAC ;
 scalar_t__ SSL_READ_ETM (int *) ;
 int SSL_free (int *) ;
 int * SSL_get_rbio (int *) ;
 int SSL_set_cipher_list (int *,char const*) ;
 int SSL_set_mtu (int *,int) ;
 int SSL_set_options (int *,int ) ;
 int SSL_write (int *,unsigned char*,size_t) ;
 int TEST_error (char*,char const*,unsigned long,unsigned long,unsigned long,int) ;
 int TEST_false (int) ;
 int TEST_info (char*,...) ;
 int TEST_int_eq (int ,int) ;
 int TEST_ptr (int *) ;
 int TEST_size_t_ne (size_t,int ) ;
 int TEST_true (int ) ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 scalar_t__ debug ;
 int memset (unsigned char*,int,int) ;

__attribute__((used)) static int mtu_test(SSL_CTX *ctx, const char *cs, int no_etm)
{
    SSL *srvr_ssl = ((void*)0), *clnt_ssl = ((void*)0);
    BIO *sc_bio = ((void*)0);
    int i;
    size_t s;
    size_t mtus[30];
    unsigned char buf[600];
    int rv = 0;

    memset(buf, 0x5a, sizeof(buf));

    if (!TEST_true(create_ssl_objects(ctx, ctx, &srvr_ssl, &clnt_ssl,
                                      ((void*)0), ((void*)0))))
        goto end;

    if (no_etm)
        SSL_set_options(srvr_ssl, SSL_OP_NO_ENCRYPT_THEN_MAC);

    if (!TEST_true(SSL_set_cipher_list(srvr_ssl, cs))
            || !TEST_true(SSL_set_cipher_list(clnt_ssl, cs))
            || !TEST_ptr(sc_bio = SSL_get_rbio(srvr_ssl))
            || !TEST_true(create_ssl_connection(clnt_ssl, srvr_ssl,
                                                SSL_ERROR_NONE)))
        goto end;

    if (debug)
        TEST_info("Channel established");



    for (i = 0; i < 30; i++) {
        SSL_set_mtu(clnt_ssl, 500 + i);
        mtus[i] = DTLS_get_data_mtu(clnt_ssl);
        if (debug)
            TEST_info("%s%s MTU for record mtu %d = %lu",
                      cs, no_etm ? "-noEtM" : "",
                      500 + i, (unsigned long)mtus[i]);
        if (!TEST_size_t_ne(mtus[i], 0)) {
            TEST_info("Cipher %s MTU %d", cs, 500 + i);
            goto end;
        }
    }


    SSL_set_mtu(clnt_ssl, 1000);





    for (s = mtus[0]; s <= mtus[29]; s++) {
        size_t reclen;

        if (!TEST_int_eq(SSL_write(clnt_ssl, buf, s), (int)s))
            goto end;
        reclen = BIO_read(sc_bio, buf, sizeof(buf));
        if (debug)
            TEST_info("record %zu for payload %zu", reclen, s);

        for (i = 0; i < 30; i++) {


            if (!TEST_false(s <= mtus[i] && reclen > (size_t)(500 + i))) {




                TEST_error("%s: s=%lu, mtus[i]=%lu, reclen=%lu, i=%d",
                           cs, (unsigned long)s, (unsigned long)mtus[i],
                           (unsigned long)reclen, 500 + i);
                goto end;
            }
            if (!TEST_false(s > mtus[i] && reclen <= (size_t)(500 + i))) {





                TEST_error("%s: s=%lu, mtus[i]=%lu, reclen=%lu, i=%d",
                           cs, (unsigned long)s, (unsigned long)mtus[i],
                           (unsigned long)reclen, 500 + i);
                goto end;
            }
        }
    }
    rv = 1;
    if (SSL_READ_ETM(clnt_ssl))
        rv = 2;
 end:
    SSL_free(clnt_ssl);
    SSL_free(srvr_ssl);
    return rv;
}
