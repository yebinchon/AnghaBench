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
 int /*<<< orphan*/  CRYPTO_MEM_CHECK_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 char** FUNC3 (int*,char**) ; 
 char* FUNC4 (char*) ; 
 int level ; 
 int /*<<< orphan*/  FUNC5 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int*,char***) ; 

int FUNC10(int argc, char *argv[])
{
    char *test_seed = FUNC4("OPENSSL_TEST_RAND_ORDER");
    char *TAP_levels = FUNC4("HARNESS_OSSL_LEVEL");

    if (TAP_levels != NULL)
        level = 4 * FUNC2(TAP_levels);
    if (test_seed != NULL)
        FUNC6(FUNC2(test_seed));

#ifndef OPENSSL_NO_CRYPTO_MDEBUG
    if (FUNC7()) {
        FUNC1(1);
        FUNC0(CRYPTO_MEM_CHECK_ON);
    }
#endif

#if defined(OPENSSL_SYS_VMS) && defined(__DECC)
    argv = copy_argv(&argc, argv);
#elif defined(_WIN32)
    /*
     * Replace argv[] with UTF-8 encoded strings.
     */
    win32_utf8argv(&argc, &argv);
#endif

    if (!FUNC5(argc, argv, FUNC8()))
        return 0;
    return 1;
}