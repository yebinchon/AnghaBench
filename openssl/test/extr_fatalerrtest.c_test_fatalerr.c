
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dummyrec ;
typedef int buf ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 int BIO_write (int *,unsigned char*,int) ;
 int ERR_clear_error () ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_cipher_list (int *,char*) ;
 int SSL_CTX_set_ciphersuites (int *,char*) ;
 int SSL_ERROR_NONE ;
 int SSL_free (int *) ;
 int * SSL_get_wbio (int *) ;
 int SSL_read (int *,char*,int) ;
 int SSL_write (int *,char const*,int ) ;
 int TEST_error (char*,char*) ;
 int TEST_false (int ) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_int_le (int,int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int TLS1_VERSION ;
 int TLS_method () ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int printf (char*) ;
 int privkey ;
 int strlen (char const*) ;

__attribute__((used)) static int test_fatalerr(void)
{
    SSL_CTX *sctx = ((void*)0), *cctx = ((void*)0);
    SSL *sssl = ((void*)0), *cssl = ((void*)0);
    const char *msg = "Dummy";
    BIO *wbio = ((void*)0);
    int ret = 0, len;
    char buf[80];
    unsigned char dummyrec[] = {
        0x17, 0x03, 0x03, 0x00, 0x05, 'D', 'u', 'm', 'm', 'y'
    };

    if (!TEST_true(create_ssl_ctx_pair(TLS_method(), TLS_method(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        goto err;





    if (!TEST_true(SSL_CTX_set_cipher_list(sctx, "AES128-SHA"))
            || !TEST_true(SSL_CTX_set_cipher_list(cctx, "AES256-SHA"))
            || !TEST_true(SSL_CTX_set_ciphersuites(sctx,
                                                   "TLS_AES_128_GCM_SHA256"))
            || !TEST_true(SSL_CTX_set_ciphersuites(cctx,
                                                   "TLS_AES_256_GCM_SHA384"))
            || !TEST_true(create_ssl_objects(sctx, cctx, &sssl, &cssl, ((void*)0),
                          ((void*)0))))
        goto err;

    wbio = SSL_get_wbio(cssl);
    if (!TEST_ptr(wbio)) {
        printf("Unexpected NULL bio received\n");
        goto err;
    }


    if (!TEST_false(create_ssl_connection(sssl, cssl, SSL_ERROR_NONE)))
        goto err;

    ERR_clear_error();


    if (!TEST_int_gt(BIO_write(wbio, dummyrec, sizeof(dummyrec)), 0))
        goto err;


    if (!TEST_int_le(len = SSL_read(sssl, buf, sizeof(buf) - 1), 0)) {
        buf[len] = '\0';
        TEST_error("Unexpected success reading data: %s\n", buf);
        goto err;
    }
    if (!TEST_int_le(SSL_write(sssl, msg, strlen(msg)), 0))
        goto err;

    ret = 1;
 err:
    SSL_free(sssl);
    SSL_free(cssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);

    return ret;
}
