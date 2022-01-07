
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int SSL_CTX_new (int ) ;
 int TEST_ptr (int ) ;
 int TLS_method () ;
 int ctx ;
 int test_func ;

int setup_tests(void)
{
    if (!TEST_ptr(ctx = SSL_CTX_new(TLS_method())))
        return 0;
    ADD_TEST(test_func);
    return 1;
}
