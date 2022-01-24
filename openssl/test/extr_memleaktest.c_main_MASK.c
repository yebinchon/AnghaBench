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
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*,char*) ; 

int FUNC10(int argc, char *argv[])
{
#ifndef OPENSSL_NO_CRYPTO_MDEBUG
    char *p;
    char *lost;
    int noleak;

    p = FUNC8("OPENSSL_DEBUG_MEMORY");
    if (p != NULL && FUNC9(p, "on") == 0)
        FUNC2(1);
    FUNC0(CRYPTO_MEM_CHECK_ON);

    lost = FUNC4(3);
    if (!FUNC7(lost))
        return EXIT_FAILURE;

    if (argv[1] && FUNC9(argv[1], "freeit") == 0) {
        FUNC3(lost);
        lost = NULL;
    }

    noleak = FUNC1(stderr);
    /* If -1 return value something bad happened */
    if (!FUNC6(noleak, -1))
        return EXIT_FAILURE;

    return FUNC5(lost != NULL, noleak == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
#else
    return EXIT_SUCCESS;
#endif
}