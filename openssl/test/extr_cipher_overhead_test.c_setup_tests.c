
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int cipher_overhead ;

int setup_tests(void)
{
    ADD_TEST(cipher_overhead);
    return 1;
}
