#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {struct TYPE_21__* iqmp; struct TYPE_21__* dmq1; struct TYPE_21__* dmp1; struct TYPE_21__* n; } ;
typedef  TYPE_1__ RSA ;
typedef  TYPE_1__ BN_CTX ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int const) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(void)
{
    const int P = 15;
    const int Q = 17;
    const int E = 5;
    const int N = P*Q;
    const int DP = 3;
    const int DQ = 13;
    const int QINV = 8;

    int ret = 0;
    RSA *key = NULL;
    BN_CTX *ctx = NULL;
    BIGNUM *p = NULL, *q = NULL, *e = NULL;

    ret = FUNC10(key = FUNC6())
          && FUNC10(ctx = FUNC1())
          && FUNC10(p = FUNC3())
          && FUNC10(q = FUNC3())
          && FUNC10(e = FUNC3())
          && FUNC11(FUNC4(p, P))
          && FUNC11(FUNC4(q, Q))
          && FUNC11(FUNC4(e, E))
          && FUNC11(FUNC7(key, p, q));
    if (!ret) {
        FUNC2(p);
        FUNC2(q);
        goto end;
    }
    ret = FUNC11(FUNC13(key, 8, e, ctx))
          && FUNC8(key->n, N)
          && FUNC8(key->dmp1, DP)
          && FUNC8(key->dmq1, DQ)
          && FUNC8(key->iqmp, QINV)
          && FUNC11(FUNC12(key, ctx))
          /* (a) 1 < dP < (p – 1). */
          && FUNC11(FUNC4(key->dmp1, 1))
          && FUNC9(FUNC12(key, ctx))
          && FUNC11(FUNC4(key->dmp1, P-1))
          && FUNC9(FUNC12(key, ctx))
          && FUNC11(FUNC4(key->dmp1, DP))
          /* (b) 1 < dQ < (q - 1). */
          && FUNC11(FUNC4(key->dmq1, 1))
          && FUNC9(FUNC12(key, ctx))
          && FUNC11(FUNC4(key->dmq1, Q-1))
          && FUNC9(FUNC12(key, ctx))
          && FUNC11(FUNC4(key->dmq1, DQ))
          /* (c) 1 < qInv < p */
          && FUNC11(FUNC4(key->iqmp, 1))
          && FUNC9(FUNC12(key, ctx))
          && FUNC11(FUNC4(key->iqmp, P))
          && FUNC9(FUNC12(key, ctx))
          && FUNC11(FUNC4(key->iqmp, QINV))
          /* (d) 1 = (dP . e) mod (p - 1)*/
          && FUNC11(FUNC4(key->dmp1, DP+1))
          && FUNC9(FUNC12(key, ctx))
          && FUNC11(FUNC4(key->dmp1, DP))
          /* (e) 1 = (dQ . e) mod (q - 1) */
          && FUNC11(FUNC4(key->dmq1, DQ-1))
          && FUNC9(FUNC12(key, ctx))
          && FUNC11(FUNC4(key->dmq1, DQ))
          /* (f) 1 = (qInv . q) mod p */
          && FUNC11(FUNC4(key->iqmp, QINV+1))
          && FUNC9(FUNC12(key, ctx))
          && FUNC11(FUNC4(key->iqmp, QINV))
          /* check defaults are still valid */
          && FUNC11(FUNC12(key, ctx));
end:
    FUNC2(e);
    FUNC5(key);
    FUNC0(ctx);
    return ret;
}