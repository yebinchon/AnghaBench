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
 int /*<<< orphan*/  test_hmac_bad ; 
 int /*<<< orphan*/  test_hmac_copy ; 
 int /*<<< orphan*/  test_hmac_md5 ; 
 int /*<<< orphan*/  test_hmac_run ; 
 int /*<<< orphan*/  test_hmac_single_shot ; 

int FUNC2(void)
{
    FUNC0(test_hmac_md5, 4);
    FUNC1(test_hmac_single_shot);
    FUNC1(test_hmac_bad);
    FUNC1(test_hmac_run);
    FUNC1(test_hmac_copy);
    return 1;
}