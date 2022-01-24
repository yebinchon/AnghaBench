#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ (* check_issued ) (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;TYPE_3__* store; } ;
typedef  TYPE_2__ X509_STORE_CTX ;
struct TYPE_18__ {int /*<<< orphan*/  objs; } ;
typedef  TYPE_3__ X509_STORE ;
struct TYPE_16__ {int /*<<< orphan*/ * x509; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_1__ data; } ;
typedef  TYPE_4__ X509_OBJECT ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 scalar_t__ X509_LU_X509 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 () ; 
 int FUNC4 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 

int FUNC15(X509 **issuer, X509_STORE_CTX *ctx, X509 *x)
{
    X509_NAME *xn;
    X509_OBJECT *obj = FUNC3(), *pobj = NULL;
    X509_STORE *store = ctx->store;
    int i, ok, idx, ret;

    if (obj == NULL)
        return -1;
    *issuer = NULL;
    xn = FUNC7(x);
    ok = FUNC4(ctx, X509_LU_X509, xn, obj);
    if (ok != 1) {
        FUNC1(obj);
        return 0;
    }
    /* If certificate matches all OK */
    if (ctx->check_issued(ctx, x, obj->data.x509)) {
        if (FUNC14(ctx, obj->data.x509, -1)) {
            *issuer = obj->data.x509;
            if (!FUNC9(*issuer)) {
                *issuer = NULL;
                ok = -1;
            }
            FUNC1(obj);
            return ok;
        }
    }
    FUNC1(obj);

    if (store == NULL)
        return 0;

    /* Else find index of first cert accepted by 'check_issued' */
    ret = 0;
    FUNC5(store);
    idx = FUNC2(store->objs, X509_LU_X509, xn);
    if (idx != -1) {            /* should be true as we've had at least one
                                 * match */
        /* Look through all matching certs for suitable issuer */
        for (i = idx; i < FUNC10(store->objs); i++) {
            pobj = FUNC11(store->objs, i);
            /* See if we've run past the matches */
            if (pobj->type != X509_LU_X509)
                break;
            if (FUNC0(xn, FUNC8(pobj->data.x509)))
                break;
            if (ctx->check_issued(ctx, x, pobj->data.x509)) {
                *issuer = pobj->data.x509;
                ret = 1;
                /*
                 * If times check, exit with match,
                 * otherwise keep looking. Leave last
                 * match in issuer so we return nearest
                 * match if no certificate time is OK.
                 */

                if (FUNC14(ctx, *issuer, -1))
                    break;
            }
        }
    }
    if (*issuer && !FUNC9(*issuer)) {
        *issuer = NULL;
        ret = -1;
    }
    FUNC6(store);
    return ret;
}