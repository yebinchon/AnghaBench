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
typedef  int /*<<< orphan*/  OSSL_PROVIDER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC3(void)
{
    const char *name = "p_test_configured";
    OSSL_PROVIDER *prov = NULL;
    /* This MUST match the config file */
    const char *expected_greeting =
        "Hello OpenSSL, greetings from Test Provider";

    return
        FUNC0(prov = FUNC1(NULL, name, 0))
        && FUNC2(prov, expected_greeting);
}