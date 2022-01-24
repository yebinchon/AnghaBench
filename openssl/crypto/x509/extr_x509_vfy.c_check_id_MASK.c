#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  iplen; scalar_t__ ip; int /*<<< orphan*/  emaillen; scalar_t__ email; scalar_t__ hosts; } ;
typedef  TYPE_1__ X509_VERIFY_PARAM ;
struct TYPE_7__ {int /*<<< orphan*/ * cert; TYPE_1__* param; } ;
typedef  TYPE_2__ X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int /*<<< orphan*/  X509_V_ERR_EMAIL_MISMATCH ; 
 int /*<<< orphan*/  X509_V_ERR_HOSTNAME_MISMATCH ; 
 int /*<<< orphan*/  X509_V_ERR_IP_ADDRESS_MISMATCH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(X509_STORE_CTX *ctx)
{
    X509_VERIFY_PARAM *vpm = ctx->param;
    X509 *x = ctx->cert;
    if (vpm->hosts && FUNC2(x, vpm) <= 0) {
        if (!FUNC3(ctx, X509_V_ERR_HOSTNAME_MISMATCH))
            return 0;
    }
    if (vpm->email && FUNC0(x, vpm->email, vpm->emaillen, 0) <= 0) {
        if (!FUNC3(ctx, X509_V_ERR_EMAIL_MISMATCH))
            return 0;
    }
    if (vpm->ip && FUNC1(x, vpm->ip, vpm->iplen, 0) <= 0) {
        if (!FUNC3(ctx, X509_V_ERR_IP_ADDRESS_MISMATCH))
            return 0;
    }
    return 1;
}