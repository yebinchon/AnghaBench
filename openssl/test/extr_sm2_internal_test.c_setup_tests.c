
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int TEST_note (char*) ;
 int sm2_crypt_test ;
 int sm2_sig_test ;

int setup_tests(void)
{



    ADD_TEST(sm2_crypt_test);
    ADD_TEST(sm2_sig_test);

    return 1;
}
