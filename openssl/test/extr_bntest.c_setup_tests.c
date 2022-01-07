
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPTION_CHOICE ;


 int ADD_ALL_TESTS (int ,int) ;
 int ADD_TEST (int ) ;
 int BN_CTX_new () ;
 int OPT_EOF ;



 scalar_t__ OSSL_NELEM (int ) ;
 int TEST_ptr (int ) ;
 int ctx ;
 int kMPITests ;
 int not_primes ;
 int opt_next () ;
 int primes ;
 int run_file_tests ;
 int test_asc2bn ;
 int test_badmod ;
 int test_bn2padded ;
 int test_ctx_consttime_flag ;
 int test_dec2bn ;
 int test_div_recip ;
 int test_expmodone ;
 int test_expmodzero ;
 int test_gcd_prime ;
 int test_get_argument_count () ;
 int test_gf2m_add ;
 int test_gf2m_mod ;
 int test_gf2m_moddiv ;
 int test_gf2m_modexp ;
 int test_gf2m_modinv ;
 int test_gf2m_modsolvequad ;
 int test_gf2m_modsqrt ;
 int test_gf2m_mul ;
 int test_gf2m_sqr ;
 int test_hex2bn ;
 int test_is_prime ;
 int test_kronecker ;
 int test_mod ;
 int test_modexp_mont5 ;
 int test_mpi ;
 int test_negzero ;
 int test_not_prime ;
 int test_rand ;
 int test_rand_range ;
 int test_smallprime ;
 int test_smallsafeprime ;
 int test_sub ;
 int test_swap ;

int setup_tests(void)
{
    OPTION_CHOICE o;
    int n, stochastic = 0;

    while ((o = opt_next()) != OPT_EOF) {
        switch (o) {
        case 129:
            stochastic = 1;
            break;
        case 128:
           break;
        default:
        case 130:
            return 0;
        }
    }
    n = test_get_argument_count();

    if (!TEST_ptr(ctx = BN_CTX_new()))
        return 0;

    if (n == 0) {
        ADD_TEST(test_sub);
        ADD_TEST(test_div_recip);
        ADD_TEST(test_mod);
        ADD_TEST(test_modexp_mont5);
        ADD_TEST(test_kronecker);
        ADD_TEST(test_rand);
        ADD_TEST(test_bn2padded);
        ADD_TEST(test_dec2bn);
        ADD_TEST(test_hex2bn);
        ADD_TEST(test_asc2bn);
        ADD_ALL_TESTS(test_mpi, (int)OSSL_NELEM(kMPITests));
        ADD_TEST(test_negzero);
        ADD_TEST(test_badmod);
        ADD_TEST(test_expmodzero);
        ADD_TEST(test_expmodone);
        ADD_ALL_TESTS(test_smallprime, 16);
        ADD_ALL_TESTS(test_smallsafeprime, 16);
        ADD_TEST(test_swap);
        ADD_TEST(test_ctx_consttime_flag);

        ADD_TEST(test_gf2m_add);
        ADD_TEST(test_gf2m_mod);
        ADD_TEST(test_gf2m_mul);
        ADD_TEST(test_gf2m_sqr);
        ADD_TEST(test_gf2m_modinv);
        ADD_TEST(test_gf2m_moddiv);
        ADD_TEST(test_gf2m_modexp);
        ADD_TEST(test_gf2m_modsqrt);
        ADD_TEST(test_gf2m_modsolvequad);

        ADD_ALL_TESTS(test_is_prime, (int)OSSL_NELEM(primes));
        ADD_ALL_TESTS(test_not_prime, (int)OSSL_NELEM(not_primes));
        ADD_TEST(test_gcd_prime);
        if (stochastic)
            ADD_TEST(test_rand_range);
    } else {
        ADD_ALL_TESTS(run_file_tests, n);
    }
    return 1;
}
