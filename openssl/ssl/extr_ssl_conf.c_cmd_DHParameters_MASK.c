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
struct TYPE_3__ {scalar_t__ ssl; scalar_t__ ctx; } ;
typedef  TYPE_1__ SSL_CONF_CTX ;
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(SSL_CONF_CTX *cctx, const char *value)
{
    int rv = 0;
    DH *dh = NULL;
    BIO *in = NULL;
    if (cctx->ctx || cctx->ssl) {
        in = FUNC1(FUNC3());
        if (in == NULL)
            goto end;
        if (FUNC2(in, value) <= 0)
            goto end;
        dh = FUNC5(in, NULL, NULL, NULL);
        if (dh == NULL)
            goto end;
    } else
        return 1;
    if (cctx->ctx)
        rv = FUNC6(cctx->ctx, dh);
    if (cctx->ssl)
        rv = FUNC7(cctx->ssl, dh);
 end:
    FUNC4(dh);
    FUNC0(in);
    return rv > 0;
}