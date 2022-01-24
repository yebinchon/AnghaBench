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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

OSSL_PROVIDER *FUNC4(OPENSSL_CTX *libctx, const char *name)
{
    OSSL_PROVIDER *prov = NULL;

    /* Find it or create it */
    if ((prov = FUNC1(libctx, name, 0)) == NULL
        && (prov = FUNC3(libctx, name, NULL, 0)) == NULL)
        return NULL;

    if (!FUNC0(prov)) {
        FUNC2(prov);
        return NULL;
    }

    return prov;
}