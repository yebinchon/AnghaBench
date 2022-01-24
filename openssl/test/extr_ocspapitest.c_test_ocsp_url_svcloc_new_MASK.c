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
typedef  int /*<<< orphan*/  X509_EXTENSION ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC7(void)
{
    static const char *  urls[] = {
        "www.openssl.org",
        "www.openssl.net",
        NULL
    };

    X509 *issuer = NULL;
    X509_EXTENSION * ext = NULL;
    int ret = 0;

    if (!FUNC2(FUNC6(&issuer)))
        goto err;

    /*
     * Test calling this ocsp method to catch any memory leak
     */
    ext = FUNC0(FUNC5(issuer), urls);
    if (!FUNC1(ext))
        goto err;

    FUNC3(ext);
    ret = 1;
err:
    FUNC4(issuer);
    return ret;
}