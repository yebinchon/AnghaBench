#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int prime_len; int subprime_len; int use_dsa; int /*<<< orphan*/ * md; } ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  DSA ;
typedef  TYPE_1__ DH_PKEY_CTX ;
typedef  int /*<<< orphan*/  BN_GENCB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static DSA *FUNC6(DH_PKEY_CTX *dctx, BN_GENCB *pcb)
{
    DSA *ret;
    int rv = 0;
    int prime_len = dctx->prime_len;
    int subprime_len = dctx->subprime_len;
    const EVP_MD *md = dctx->md;
    if (dctx->use_dsa > 2)
        return NULL;
    ret = FUNC1();
    if (ret == NULL)
        return NULL;
    if (subprime_len == -1) {
        if (prime_len >= 2048)
            subprime_len = 256;
        else
            subprime_len = 160;
    }
    if (md == NULL) {
        if (prime_len >= 2048)
            md = FUNC3();
        else
            md = FUNC2();
    }
    if (dctx->use_dsa == 1)
        rv = FUNC4(ret, prime_len, subprime_len, md,
                                  NULL, 0, NULL, NULL, NULL, pcb);
    else if (dctx->use_dsa == 2)
        rv = FUNC5(ret, prime_len, subprime_len, md,
                                   NULL, 0, -1, NULL, NULL, NULL, pcb);
    if (rv <= 0) {
        FUNC0(ret);
        return NULL;
    }
    return ret;
}