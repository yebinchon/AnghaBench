
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int OPENSSL_cpuid_setup () ;
 int* OPENSSL_ia32cap_P ;
 int sanity_check_rdrand_bytes ;
 int sanity_check_rdseed_bytes ;

int setup_tests(void)
{
    OPENSSL_cpuid_setup();

    int have_rdseed = (OPENSSL_ia32cap_P[2] & (1 << 18)) != 0;
    int have_rdrand = (OPENSSL_ia32cap_P[1] & (1 << (62 - 32))) != 0;

    if (have_rdrand) {
        ADD_TEST(sanity_check_rdrand_bytes);
    }

    if (have_rdseed) {
        ADD_TEST(sanity_check_rdseed_bytes);
    }

    return 1;
}
