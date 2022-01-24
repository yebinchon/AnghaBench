#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_STORE ;
struct TYPE_9__ {int /*<<< orphan*/ * chain_store; int /*<<< orphan*/ * verify_store; } ;
struct TYPE_8__ {TYPE_2__* ssl; TYPE_1__* ctx; } ;
struct TYPE_7__ {TYPE_4__* cert; } ;
struct TYPE_6__ {TYPE_4__* cert; } ;
typedef  TYPE_3__ SSL_CONF_CTX ;
typedef  TYPE_4__ CERT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static int FUNC4(SSL_CONF_CTX *cctx,
                    const char *CAfile, const char *CApath, const char *CAstore,
                    int verify_store)
{
    CERT *cert;
    X509_STORE **st;

    if (cctx->ctx)
        cert = cctx->ctx->cert;
    else if (cctx->ssl)
        cert = cctx->ssl->cert;
    else
        return 1;
    st = verify_store ? &cert->verify_store : &cert->chain_store;
    if (*st == NULL) {
        *st = FUNC3();
        if (*st == NULL)
            return 0;
    }

    if (CAfile != NULL && !FUNC0(*st, CAfile))
        return 0;
    if (CApath != NULL && !FUNC1(*st, CApath))
        return 0;
    if (CAstore != NULL && !FUNC2(*st, CAstore))
        return 0;
    return 1;
}