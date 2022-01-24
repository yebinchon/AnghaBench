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
 int NUM_TESTS ; 
 int /*<<< orphan*/  test_des_cbc ; 
 int /*<<< orphan*/  test_des_cbc_cksum ; 
 int /*<<< orphan*/  test_des_cfb16 ; 
 int /*<<< orphan*/  test_des_cfb32 ; 
 int /*<<< orphan*/  test_des_cfb48 ; 
 int /*<<< orphan*/  test_des_cfb64 ; 
 int /*<<< orphan*/  test_des_cfb8 ; 
 int /*<<< orphan*/  test_des_crypt ; 
 int /*<<< orphan*/  test_des_ecb ; 
 int /*<<< orphan*/  test_des_ede_cbc ; 
 int /*<<< orphan*/  test_des_ede_cfb64 ; 
 int /*<<< orphan*/  test_des_ede_ecb ; 
 int /*<<< orphan*/  test_des_ede_ofb64 ; 
 int /*<<< orphan*/  test_des_ofb ; 
 int /*<<< orphan*/  test_des_ofb64 ; 
 int /*<<< orphan*/  test_des_pcbc ; 
 int /*<<< orphan*/  test_des_quad_cksum ; 
 int /*<<< orphan*/  test_ede_cbc ; 
 int /*<<< orphan*/  test_input_align ; 
 int /*<<< orphan*/  test_output_align ; 

int FUNC2(void)
{
#ifndef OPENSSL_NO_DES
    FUNC0(test_des_ecb, NUM_TESTS);
    FUNC1(test_des_cbc);
    FUNC1(test_ede_cbc);
    FUNC0(test_des_ede_ecb, NUM_TESTS - 2);
    FUNC1(test_des_ede_cbc);
    FUNC1(test_des_pcbc);
    FUNC1(test_des_cfb8);
    FUNC1(test_des_cfb16);
    FUNC1(test_des_cfb32);
    FUNC1(test_des_cfb48);
    FUNC1(test_des_cfb64);
    FUNC1(test_des_ede_cfb64);
    FUNC1(test_des_ofb);
    FUNC1(test_des_ofb64);
    FUNC1(test_des_ede_ofb64);
    FUNC1(test_des_cbc_cksum);
    FUNC1(test_des_quad_cksum);
    FUNC1(test_des_crypt);
    FUNC0(test_input_align, 4);
    FUNC0(test_output_align, 4);
#endif
    return 1;
}