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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  app_data_index ; 
 int crngt_num_cases ; 
 int /*<<< orphan*/  drbg_test ; 
 int /*<<< orphan*/  drgb_types ; 
 int /*<<< orphan*/  test_crngt ; 
 int /*<<< orphan*/  test_error_checks ; 
 int /*<<< orphan*/  test_kats ; 
 int /*<<< orphan*/  test_multi_set ; 
 int /*<<< orphan*/  test_multi_thread ; 
 int /*<<< orphan*/  test_rand_add ; 
 int /*<<< orphan*/  test_rand_drbg_prediction_resistance ; 
 int /*<<< orphan*/  test_rand_drbg_reseed ; 
 int /*<<< orphan*/  test_rand_seed ; 
 int /*<<< orphan*/  test_set_defaults ; 

int FUNC4(void)
{
    app_data_index = FUNC3(0L, NULL, NULL, NULL, NULL);

    FUNC0(test_kats, FUNC2(drbg_test));
    FUNC0(test_error_checks, FUNC2(drbg_test));
    FUNC1(test_rand_drbg_reseed);
    FUNC1(test_rand_seed);
    FUNC1(test_rand_add);
    FUNC1(test_rand_drbg_prediction_resistance);
    FUNC1(test_multi_set);
    FUNC1(test_set_defaults);
#if defined(OPENSSL_THREADS)
    ADD_TEST(test_multi_thread);
#endif
    FUNC0(test_crngt, crngt_num_cases * FUNC2(drgb_types));
    return 1;
}