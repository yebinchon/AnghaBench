
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int testdata ;
typedef int buf ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 size_t MAX_ATTEMPTS ;
 int SSL_CTX_free (int *) ;
 int SSL_ERROR_NONE ;
 int SSL_ERROR_SSL ;
 int SSL_ERROR_SYSCALL ;
 int SSL_free (int *) ;
 int SSL_get_error (int *,int) ;
 int SSL_read (int *,char*,int) ;
 int SSL_write (int *,char const*,int) ;
 int TEST_false (int) ;
 int TEST_mem_eq (char const*,int,char*,int) ;
 int TEST_ptr (int *) ;
 int TEST_size_t_eq (int,int) ;
 int TEST_true (int ) ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int bio_f_async_filter () ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int fragment ;
 int privkey ;

__attribute__((used)) static int test_asyncio(int test)
{
    SSL_CTX *serverctx = ((void*)0), *clientctx = ((void*)0);
    SSL *serverssl = ((void*)0), *clientssl = ((void*)0);
    BIO *s_to_c_fbio = ((void*)0), *c_to_s_fbio = ((void*)0);
    int testresult = 0, ret;
    size_t i, j;
    const char testdata[] = "Test data";
    char buf[sizeof(testdata)];

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(), TLS_client_method(),
                                       TLS1_VERSION, 0,
                                       &serverctx, &clientctx, cert, privkey)))
        goto end;







    if (test == 1)
        fragment = 1;


    s_to_c_fbio = BIO_new(bio_f_async_filter());
    c_to_s_fbio = BIO_new(bio_f_async_filter());
    if (!TEST_ptr(s_to_c_fbio)
            || !TEST_ptr(c_to_s_fbio)) {
        BIO_free(s_to_c_fbio);
        BIO_free(c_to_s_fbio);
        goto end;
    }


    if (!TEST_true(create_ssl_objects(serverctx, clientctx, &serverssl,
                                      &clientssl, s_to_c_fbio, c_to_s_fbio))
            || !TEST_true(create_ssl_connection(serverssl, clientssl,
                          SSL_ERROR_NONE)))
        goto end;





    for (j = 0; j < 2; j++) {
        int len;





        for (ret = -1, i = 0, len = 0; len != sizeof(testdata) && i < 2;
            i++) {
            ret = SSL_write(clientssl, testdata + len,
                sizeof(testdata) - len);
            if (ret > 0) {
                len += ret;
            } else {
                int ssl_error = SSL_get_error(clientssl, ret);

                if (!TEST_false(ssl_error == SSL_ERROR_SYSCALL ||
                                ssl_error == SSL_ERROR_SSL))
                    goto end;
            }
        }
        if (!TEST_size_t_eq(len, sizeof(testdata)))
            goto end;






        for (ret = -1, i = 0, len = 0; len != sizeof(testdata) &&
                i < MAX_ATTEMPTS; i++) {
            ret = SSL_read(serverssl, buf + len, sizeof(buf) - len);
            if (ret > 0) {
                len += ret;
            } else {
                int ssl_error = SSL_get_error(serverssl, ret);

                if (!TEST_false(ssl_error == SSL_ERROR_SYSCALL ||
                                ssl_error == SSL_ERROR_SSL))
                    goto end;
            }
        }
        if (!TEST_mem_eq(testdata, sizeof(testdata), buf, len))
            goto end;
    }


    SSL_free(clientssl);
    SSL_free(serverssl);
    clientssl = serverssl = ((void*)0);

    testresult = 1;

 end:
    SSL_free(clientssl);
    SSL_free(serverssl);
    SSL_CTX_free(clientctx);
    SSL_CTX_free(serverctx);

    return testresult;
}
