
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_handshake_secrets ;

int setup_tests(void)
{
    ADD_TEST(test_handshake_secrets);
    return 1;
}
