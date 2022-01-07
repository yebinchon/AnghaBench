
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_ssl_cert_table ;

int setup_tests(void)
{
    ADD_TEST(test_ssl_cert_table);
    return 1;
}
