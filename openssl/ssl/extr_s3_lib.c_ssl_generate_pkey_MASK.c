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
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

EVP_PKEY *FUNC5(EVP_PKEY *pm)
{
    EVP_PKEY_CTX *pctx = NULL;
    EVP_PKEY *pkey = NULL;

    if (pm == NULL)
        return NULL;
    pctx = FUNC1(pm, NULL);
    if (pctx == NULL)
        goto err;
    if (FUNC4(pctx) <= 0)
        goto err;
    if (FUNC3(pctx, &pkey) <= 0) {
        FUNC2(pkey);
        pkey = NULL;
    }

    err:
    FUNC0(pctx);
    return pkey;
}