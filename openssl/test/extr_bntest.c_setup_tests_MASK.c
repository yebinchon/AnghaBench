#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int OPTION_CHOICE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int OPT_EOF ; 
#define  OPT_ERR 130 
#define  OPT_STOCHASTIC_TESTS 129 
#define  OPT_TEST_CASES 128 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  kMPITests ; 
 int /*<<< orphan*/  not_primes ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  primes ; 
 int /*<<< orphan*/  run_file_tests ; 
 int /*<<< orphan*/  test_asc2bn ; 
 int /*<<< orphan*/  test_badmod ; 
 int /*<<< orphan*/  test_bn2padded ; 
 int /*<<< orphan*/  test_ctx_consttime_flag ; 
 int /*<<< orphan*/  test_dec2bn ; 
 int /*<<< orphan*/  test_div_recip ; 
 int /*<<< orphan*/  test_expmodone ; 
 int /*<<< orphan*/  test_expmodzero ; 
 int /*<<< orphan*/  test_gcd_prime ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  test_gf2m_add ; 
 int /*<<< orphan*/  test_gf2m_mod ; 
 int /*<<< orphan*/  test_gf2m_moddiv ; 
 int /*<<< orphan*/  test_gf2m_modexp ; 
 int /*<<< orphan*/  test_gf2m_modinv ; 
 int /*<<< orphan*/  test_gf2m_modsolvequad ; 
 int /*<<< orphan*/  test_gf2m_modsqrt ; 
 int /*<<< orphan*/  test_gf2m_mul ; 
 int /*<<< orphan*/  test_gf2m_sqr ; 
 int /*<<< orphan*/  test_hex2bn ; 
 int /*<<< orphan*/  test_is_prime ; 
 int /*<<< orphan*/  test_kronecker ; 
 int /*<<< orphan*/  test_mod ; 
 int /*<<< orphan*/  test_modexp_mont5 ; 
 int /*<<< orphan*/  test_mpi ; 
 int /*<<< orphan*/  test_negzero ; 
 int /*<<< orphan*/  test_not_prime ; 
 int /*<<< orphan*/  test_rand ; 
 int /*<<< orphan*/  test_rand_range ; 
 int /*<<< orphan*/  test_smallprime ; 
 int /*<<< orphan*/  test_smallsafeprime ; 
 int /*<<< orphan*/  test_sub ; 
 int /*<<< orphan*/  test_swap ; 

int FUNC7(void)
{
    OPTION_CHOICE o;
    int n, stochastic = 0;

    while ((o = FUNC5()) != OPT_EOF) {
        switch (o) {
        case OPT_STOCHASTIC_TESTS:
            stochastic = 1;
            break;
        case OPT_TEST_CASES:
           break;
        default:
        case OPT_ERR:
            return 0;
        }
    }
    n  = FUNC6();

    if (!FUNC4(ctx = FUNC2()))
        return 0;

    if (n == 0) {
        FUNC1(test_sub);
        FUNC1(test_div_recip);
        FUNC1(test_mod);
        FUNC1(test_modexp_mont5);
        FUNC1(test_kronecker);
        FUNC1(test_rand);
        FUNC1(test_bn2padded);
        FUNC1(test_dec2bn);
        FUNC1(test_hex2bn);
        FUNC1(test_asc2bn);
        FUNC0(test_mpi, (int)FUNC3(kMPITests));
        FUNC1(test_negzero);
        FUNC1(test_badmod);
        FUNC1(test_expmodzero);
        FUNC1(test_expmodone);
        FUNC0(test_smallprime, 16);
        FUNC0(test_smallsafeprime, 16);
        FUNC1(test_swap);
        FUNC1(test_ctx_consttime_flag);
#ifndef OPENSSL_NO_EC2M
        FUNC1(test_gf2m_add);
        FUNC1(test_gf2m_mod);
        FUNC1(test_gf2m_mul);
        FUNC1(test_gf2m_sqr);
        FUNC1(test_gf2m_modinv);
        FUNC1(test_gf2m_moddiv);
        FUNC1(test_gf2m_modexp);
        FUNC1(test_gf2m_modsqrt);
        FUNC1(test_gf2m_modsolvequad);
#endif
        FUNC0(test_is_prime, (int)FUNC3(primes));
        FUNC0(test_not_prime, (int)FUNC3(not_primes));
        FUNC1(test_gcd_prime);
        if (stochastic)
            FUNC1(test_rand_range);
    } else {
        FUNC0(run_file_tests, n);
    }
    return 1;
}