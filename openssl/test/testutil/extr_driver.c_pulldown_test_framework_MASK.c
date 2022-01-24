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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  openssl_error_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 

int FUNC3(int ret)
{
    FUNC1(NULL);
#ifndef OPENSSL_NO_CRYPTO_MDEBUG
    if (FUNC2()
        && FUNC0(openssl_error_cb, NULL) <= 0)
        return EXIT_FAILURE;
#endif
    return ret;
}