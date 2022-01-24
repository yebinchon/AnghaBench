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
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keygen_size ; 
 int /*<<< orphan*/  test_check_crt_components ; 
 int /*<<< orphan*/  test_check_prime_factor ; 
 int /*<<< orphan*/  test_check_prime_factor_range ; 
 int /*<<< orphan*/  test_check_private_exponent ; 
 int /*<<< orphan*/  test_check_private_key ; 
 int /*<<< orphan*/  test_check_public_exponent ; 
 int /*<<< orphan*/  test_check_public_key ; 
 int /*<<< orphan*/  test_fips1864_keygen_kat ; 
 int /*<<< orphan*/  test_invalid_keypair ; 
 int /*<<< orphan*/  test_pq_diff ; 
 int /*<<< orphan*/  test_sp80056b_keygen ; 

int FUNC3(void)
{
    FUNC1(test_check_public_exponent);
    FUNC1(test_check_prime_factor_range);
    FUNC1(test_check_prime_factor);
    FUNC1(test_check_private_exponent);
    FUNC1(test_check_crt_components);
    FUNC1(test_check_private_key);
    FUNC1(test_check_public_key);
    FUNC1(test_invalid_keypair);
    FUNC1(test_pq_diff);
    FUNC1(test_fips1864_keygen_kat);
    FUNC0(test_sp80056b_keygen, (int)FUNC2(keygen_size));
    return 1;
}