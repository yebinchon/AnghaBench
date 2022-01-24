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
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (size_t) ; 
 size_t FUNC4 () ; 

__attribute__((used)) static int FUNC5(OPENSSL_CTX **libctx, OSSL_PROVIDER *prov[])
{
    OPENSSL_CTX *ctx;
    int ret = 0;
    size_t i;

    ctx = FUNC0();
    if (!FUNC2(ctx))
        goto err;

    if (FUNC4() > 2)
        goto err;

    for (i = 0; i < FUNC4(); ++i) {
        char *provname = FUNC3(i);
        prov[i] = FUNC1(ctx, provname);
        if (!FUNC2(prov[i]))
            goto err;
    }
    ret = 1;
    *libctx = ctx;
err:
    return ret;
}