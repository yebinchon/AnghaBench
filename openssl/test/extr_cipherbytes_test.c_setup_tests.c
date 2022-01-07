
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int SSL_CTX_new (int ) ;
 int SSL_new (int ) ;
 int TEST_ptr (int ) ;
 int TLS_server_method () ;
 int ctx ;
 int s ;
 int test_empty ;
 int test_unsupported ;
 int test_v2 ;
 int test_v3 ;

int setup_tests(void)
{
    if (!TEST_ptr(ctx = SSL_CTX_new(TLS_server_method()))
            || !TEST_ptr(s = SSL_new(ctx)))
        return 0;

    ADD_TEST(test_empty);
    ADD_TEST(test_unsupported);
    ADD_TEST(test_v2);
    ADD_TEST(test_v3);
    return 1;
}
