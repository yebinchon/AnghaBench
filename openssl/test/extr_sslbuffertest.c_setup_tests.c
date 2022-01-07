
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int TEST_error (char*) ;
 int TEST_ptr (char*) ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int clientctx ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int *,int *,char*,char*) ;
 int serverctx ;
 int test_func ;
 char* test_get_argument (int) ;

int setup_tests(void)
{
    char *cert, *pkey;

    if (!TEST_ptr(cert = test_get_argument(0))
            || !TEST_ptr(pkey = test_get_argument(1)))
        return 0;

    if (!create_ssl_ctx_pair(TLS_server_method(), TLS_client_method(),
                             TLS1_VERSION, 0,
                             &serverctx, &clientctx, cert, pkey)) {
        TEST_error("Failed to create SSL_CTX pair\n");
        return 0;
    }

    ADD_ALL_TESTS(test_func, 9);
    return 1;
}
