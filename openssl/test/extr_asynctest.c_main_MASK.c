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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CRYPTO_MEM_CHECK_ON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(int argc, char **argv)
{
    if (!FUNC0()) {
        FUNC3(stderr,
                "OpenSSL build is not ASYNC capable - skipping async tests\n");
    } else {
        FUNC2(1);
        FUNC1(CRYPTO_MEM_CHECK_ON);

        if (       !FUNC9()
                || !FUNC7()
                || !FUNC10()
                || !FUNC8()
                || !FUNC5()
                || !FUNC6()) {
            return 1;
        }
    }
    FUNC4("PASS\n");
    return 0;
}