#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  chain; TYPE_1__* param; } ;
typedef  TYPE_2__ X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_7__ {scalar_t__ auth_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  X509_V_ERR_CA_KEY_TOO_SMALL ; 
 int /*<<< orphan*/  X509_V_ERR_CA_MD_TOO_WEAK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(X509_STORE_CTX *ctx)
{
    int i;
    int num = FUNC2(ctx->chain);

    if (ctx->param->auth_level <= 0)
        return 1;

    for (i = 0; i < num; ++i) {
        X509 *cert = FUNC3(ctx->chain, i);

        /*
         * We've already checked the security of the leaf key, so here we only
         * check the security of issuer keys.
         */
        if (i > 0 && !FUNC0(ctx, cert) &&
            FUNC4(ctx, cert, i, X509_V_ERR_CA_KEY_TOO_SMALL) == 0)
            return 0;
        /*
         * We also check the signature algorithm security of all certificates
         * except those of the trust anchor at index num-1.
         */
        if (i < num - 1 && !FUNC1(ctx, cert) &&
            FUNC4(ctx, cert, i, X509_V_ERR_CA_MD_TOO_WEAK) == 0)
            return 0;
    }
    return 1;
}