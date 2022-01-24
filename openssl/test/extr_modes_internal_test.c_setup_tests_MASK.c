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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aes_cts128_vectors ; 
 int /*<<< orphan*/  gcm128_vectors ; 
 int /*<<< orphan*/  test_aes_cts128 ; 
 int /*<<< orphan*/  test_aes_cts128_nist ; 
 int /*<<< orphan*/  test_gcm128 ; 

int FUNC2(void)
{
    FUNC0(test_aes_cts128, FUNC1(aes_cts128_vectors));
    FUNC0(test_aes_cts128_nist, FUNC1(aes_cts128_vectors));
    FUNC0(test_gcm128, FUNC1(gcm128_vectors));
    return 1;
}