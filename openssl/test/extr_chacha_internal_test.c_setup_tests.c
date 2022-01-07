
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ref ;


 int ADD_ALL_TESTS (int ,int) ;
 int OPENSSL_cpuid_setup () ;
 int test_cha_cha_internal ;

int setup_tests(void)
{




    ADD_ALL_TESTS(test_cha_cha_internal, sizeof(ref));
    return 1;
}
