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
struct TYPE_3__ {int /*<<< orphan*/ * p; int /*<<< orphan*/ * q; int /*<<< orphan*/ * iqmp; int /*<<< orphan*/ * e; int /*<<< orphan*/ * dmq1; int /*<<< orphan*/ * dmp1; } ;
typedef  TYPE_1__ RSA ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 () ; 

int FUNC10(const RSA *rsa, BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *r = NULL, *p1 = NULL, *q1 = NULL;

    /* check if only some of the crt components are set */
    if (rsa->dmp1 == NULL || rsa->dmq1 == NULL || rsa->iqmp == NULL) {
        if (rsa->dmp1 != NULL || rsa->dmq1 != NULL || rsa->iqmp != NULL)
            return 0;
        return 1; /* return ok if all components are NULL */
    }

    FUNC2(ctx);
    r = FUNC1(ctx);
    p1 = FUNC1(ctx);
    q1 = FUNC1(ctx);
    ret = (q1 != NULL)
          /* p1 = p -1 */
          && (FUNC5(p1, rsa->p) != NULL)
          && FUNC8(p1, 1)
          /* q1 = q - 1 */
          && (FUNC5(q1, rsa->q) != NULL)
          && FUNC8(q1, 1)
          /* (a) 1 < dP < (p – 1). */
          && (FUNC4(rsa->dmp1, FUNC9()) > 0)
          && (FUNC4(rsa->dmp1, p1) < 0)
          /* (b) 1 < dQ < (q - 1). */
          && (FUNC4(rsa->dmq1, FUNC9()) > 0)
          && (FUNC4(rsa->dmq1, q1) < 0)
          /* (c) 1 < qInv < p */
          && (FUNC4(rsa->iqmp, FUNC9()) > 0)
          && (FUNC4(rsa->iqmp, rsa->p) < 0)
          /* (d) 1 = (dP . e) mod (p - 1)*/
          && FUNC7(r, rsa->dmp1, rsa->e, p1, ctx)
          && FUNC6(r)
          /* (e) 1 = (dQ . e) mod (q - 1) */
          && FUNC7(r, rsa->dmq1, rsa->e, q1, ctx)
          && FUNC6(r)
          /* (f) 1 = (qInv . q) mod p */
          && FUNC7(r, rsa->iqmp, rsa->q, rsa->p, ctx)
          && FUNC6(r);
    FUNC3(p1);
    FUNC3(q1);
    FUNC0(ctx);
    return ret;
}