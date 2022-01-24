#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_6__ {TYPE_1__* param; } ;
typedef  TYPE_2__ X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  check_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  X509_V_ERR_CERT_HAS_EXPIRED ; 
 int /*<<< orphan*/  X509_V_ERR_CERT_NOT_YET_VALID ; 
 int /*<<< orphan*/  X509_V_ERR_ERROR_IN_CERT_NOT_AFTER_FIELD ; 
 int /*<<< orphan*/  X509_V_ERR_ERROR_IN_CERT_NOT_BEFORE_FIELD ; 
 int X509_V_FLAG_NO_CHECK_TIME ; 
 int X509_V_FLAG_USE_CHECK_TIME ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC4(X509_STORE_CTX *ctx, X509 *x, int depth)
{
    time_t *ptime;
    int i;

    if (ctx->param->flags & X509_V_FLAG_USE_CHECK_TIME)
        ptime = &ctx->param->check_time;
    else if (ctx->param->flags & X509_V_FLAG_NO_CHECK_TIME)
        return 1;
    else
        ptime = NULL;

    i = FUNC0(FUNC2(x), ptime);
    if (i >= 0 && depth < 0)
        return 0;
    if (i == 0 && !FUNC3(ctx, x, depth,
                                  X509_V_ERR_ERROR_IN_CERT_NOT_BEFORE_FIELD))
        return 0;
    if (i > 0 && !FUNC3(ctx, x, depth, X509_V_ERR_CERT_NOT_YET_VALID))
        return 0;

    i = FUNC0(FUNC1(x), ptime);
    if (i <= 0 && depth < 0)
        return 0;
    if (i == 0 && !FUNC3(ctx, x, depth,
                                  X509_V_ERR_ERROR_IN_CERT_NOT_AFTER_FIELD))
        return 0;
    if (i < 0 && !FUNC3(ctx, x, depth, X509_V_ERR_CERT_HAS_EXPIRED))
        return 0;
    return 1;
}