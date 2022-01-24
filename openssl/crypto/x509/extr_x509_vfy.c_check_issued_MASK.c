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
struct TYPE_3__ {int /*<<< orphan*/  chain; } ;
typedef  TYPE_1__ X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int X509_V_ERR_PATH_LOOP ; 
 int X509_V_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(X509_STORE_CTX *ctx, X509 *x, X509 *issuer)
{
    int ret;
    if (x == issuer)
        return FUNC2(x);
    ret = FUNC0(issuer, x);
    if (ret == X509_V_OK) {
        int i;
        X509 *ch;
        /* Special case: single self signed certificate */
        if (FUNC2(x) && FUNC3(ctx->chain) == 1)
            return 1;
        for (i = 0; i < FUNC3(ctx->chain); i++) {
            ch = FUNC4(ctx->chain, i);
            if (ch == issuer || !FUNC1(ch, issuer)) {
                ret = X509_V_ERR_PATH_LOOP;
                break;
            }
        }
    }

    return (ret == X509_V_OK);
}