
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int testdata ;
typedef int buf ;
typedef int SSL ;


 int ERR_print_errors_fp (int ) ;
 size_t MAX_ATTEMPTS ;
 int SSL_ERROR_NONE ;
 int SSL_ERROR_SSL ;
 int SSL_ERROR_SYSCALL ;
 int SSL_alloc_buffers (int *) ;
 int SSL_free (int *) ;
 int SSL_free_buffers (int *) ;
 int SSL_get_error (int *,int) ;
 int SSL_read (int *,char*,int) ;
 int SSL_write (int *,char const*,int) ;
 int TEST_error (char*,int) ;
 int TEST_mem_eq (char*,int,char const*,int) ;
 int TEST_size_t_eq (int,int) ;
 int TEST_true (int ) ;
 int clientctx ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_objects (int ,int ,int **,int **,int *,int *) ;
 int serverctx ;
 int stderr ;

__attribute__((used)) static int test_func(int test)
{
    int result = 0;
    SSL *serverssl = ((void*)0), *clientssl = ((void*)0);
    int ret;
    size_t i, j;
    const char testdata[] = "Test data";
    char buf[sizeof(testdata)];

    if (!TEST_true(create_ssl_objects(serverctx, clientctx, &serverssl, &clientssl,
                                      ((void*)0), ((void*)0)))) {
        TEST_error("Test %d failed: Create SSL objects failed\n", test);
        goto end;
    }

    if (!TEST_true(create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE))) {
        TEST_error("Test %d failed: Create SSL connection failed\n", test);
        goto end;
    }





    for (j = 0; j < 2; j++) {
        int len;






        for (ret = -1, i = 0, len = 0; len != sizeof(testdata) && i < 2;
             i++) {

            if (test >= 1 && !TEST_true(SSL_free_buffers(clientssl)))
                goto end;
            if (test >= 2 && !TEST_true(SSL_alloc_buffers(clientssl)))
                goto end;

            if (test >= 3 && !TEST_true(SSL_alloc_buffers(clientssl)))
                goto end;
            if (test >= 4 && !TEST_true(SSL_free_buffers(clientssl)))
                goto end;

            ret = SSL_write(clientssl, testdata + len,
                            sizeof(testdata) - len);
            if (ret > 0) {
                len += ret;
            } else {
                int ssl_error = SSL_get_error(clientssl, ret);

                if (ssl_error == SSL_ERROR_SYSCALL ||
                    ssl_error == SSL_ERROR_SSL) {
                    TEST_error("Test %d failed: Failed to write app data\n", test);
                    goto end;
                }
            }
        }
        if (!TEST_size_t_eq(len, sizeof(testdata)))
            goto end;





        for (ret = -1, i = 0, len = 0; len != sizeof(testdata) &&
                 i < MAX_ATTEMPTS; i++)
        {
            if (test >= 5 && !TEST_true(SSL_free_buffers(serverssl)))
                goto end;

            if (test >= 6 && !TEST_true(SSL_free_buffers(serverssl)))
                goto end;
            if (test >= 7 && !TEST_true(SSL_alloc_buffers(serverssl)))
                goto end;
            if (test >= 8 && !TEST_true(SSL_free_buffers(serverssl)))
                goto end;

            ret = SSL_read(serverssl, buf + len, sizeof(buf) - len);
            if (ret > 0) {
                len += ret;
            } else {
                int ssl_error = SSL_get_error(serverssl, ret);

                if (ssl_error == SSL_ERROR_SYSCALL ||
                    ssl_error == SSL_ERROR_SSL) {
                    TEST_error("Test %d failed: Failed to read app data\n", test);
                    goto end;
                }
            }
        }
        if (!TEST_mem_eq(buf, len, testdata, sizeof(testdata)))
            goto end;
    }

    result = 1;
 end:
    if (!result)
        ERR_print_errors_fp(stderr);

    SSL_free(clientssl);
    SSL_free(serverssl);

    return result;
}
