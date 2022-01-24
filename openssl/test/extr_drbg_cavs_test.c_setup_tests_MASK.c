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
 int /*<<< orphan*/  FUNC1 (long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  app_data_index ; 
 int /*<<< orphan*/  drbg_ctr_nelem ; 
 int /*<<< orphan*/  drbg_hash_nelem ; 
 int /*<<< orphan*/  drbg_hmac_nelem ; 
 int /*<<< orphan*/  test_cavs_ctr ; 
 int /*<<< orphan*/  test_cavs_hash ; 
 int /*<<< orphan*/  test_cavs_hmac ; 

int FUNC2(void)
{
    app_data_index = FUNC1(0L, NULL, NULL, NULL, NULL);

    FUNC0(test_cavs_ctr,  drbg_ctr_nelem);
    FUNC0(test_cavs_hmac, drbg_hmac_nelem);
    FUNC0(test_cavs_hash, drbg_hash_nelem);

    return 1;
}