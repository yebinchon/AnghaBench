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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  clientctx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  serverctx ; 
 int /*<<< orphan*/  test_func ; 
 char* FUNC6 (int) ; 

int FUNC7(void)
{
    char *cert, *pkey;

    if (!FUNC2(cert = FUNC6(0))
            || !FUNC2(pkey = FUNC6(1)))
        return 0;

    if (!FUNC5(FUNC4(), FUNC3(),
                             TLS1_VERSION, 0,
                             &serverctx, &clientctx, cert, pkey)) {
        FUNC1("Failed to create SSL_CTX pair\n");
        return 0;
    }

    FUNC0(test_func, 9);
    return 1;
}