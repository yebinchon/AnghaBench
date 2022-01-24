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
typedef  int /*<<< orphan*/  X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bad_f ; 

__attribute__((used)) static int FUNC8(void)
{
    X509_STORE_CTX *sctx = NULL;
    X509 *x = NULL;
    BIO *bio = NULL;
    int testresult = 0, ret;

    bio = FUNC1(bad_f, "r");
    if (bio == NULL)
        goto err;

    x = FUNC2(bio, NULL, 0, NULL);
    if (x == NULL)
        goto err;

    sctx = FUNC5();
    if (sctx == NULL)
        goto err;

    if (!FUNC4(sctx, NULL, x, NULL))
        goto err;

    /* Verifying a cert where we have no trusted certs should fail */
    ret = FUNC7(sctx);

    if (ret == 0) {
        /* This is the result we were expecting: Test passed */
        testresult = 1;
    }

 err:
    FUNC3(sctx);
    FUNC6(x);
    FUNC0(bio);
    return testresult;
}