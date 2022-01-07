
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int dsa_exact_size_test ;
 int dsa_large_digest_test ;
 int dsa_small_digest_test ;
 int genkeys () ;

int setup_tests(void)
{

    if (!genkeys())
        return 0;

    ADD_TEST(dsa_exact_size_test);
    ADD_TEST(dsa_small_digest_test);
    ADD_TEST(dsa_large_digest_test);

    return 1;
}
