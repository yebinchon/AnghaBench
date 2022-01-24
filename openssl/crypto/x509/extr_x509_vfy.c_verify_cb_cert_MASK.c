#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int error_depth; int error; int (* verify_cb ) (int /*<<< orphan*/ ,TYPE_1__*) ;int /*<<< orphan*/  chain; int /*<<< orphan*/ * current_cert; } ;
typedef  TYPE_1__ X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int X509_V_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(X509_STORE_CTX *ctx, X509 *x, int depth, int err)
{
    ctx->error_depth = depth;
    ctx->current_cert = (x != NULL) ? x : FUNC0(ctx->chain, depth);
    if (err != X509_V_OK)
        ctx->error = err;
    return ctx->verify_cb(0, ctx);
}