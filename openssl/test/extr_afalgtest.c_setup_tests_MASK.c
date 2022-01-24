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
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * e ; 
 int /*<<< orphan*/  test_afalg_aes_cbc ; 

int FUNC3(void)
{
#ifndef OPENSSL_NO_ENGINE
    if ((e = FUNC1("afalg")) == NULL) {
        /* Probably a platform env issue, not a test failure. */
        FUNC2("Can't load AFALG engine");
    } else {
# ifndef OPENSSL_NO_AFALGENG
        FUNC0(test_afalg_aes_cbc, 3);
# endif
    }
#endif

    return 1;
}