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
struct TYPE_4__ {int /*<<< orphan*/  tsa_name; int /*<<< orphan*/  nonce; int /*<<< orphan*/  data; int /*<<< orphan*/  imprint; int /*<<< orphan*/  md_alg; int /*<<< orphan*/  policy; int /*<<< orphan*/  certs; int /*<<< orphan*/  store; } ;
typedef  TYPE_1__ TS_VERIFY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_free ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(TS_VERIFY_CTX *ctx)
{
    if (!ctx)
        return;

    FUNC7(ctx->store);
    FUNC8(ctx->certs, X509_free);

    FUNC1(ctx->policy);

    FUNC6(ctx->md_alg);
    FUNC4(ctx->imprint);

    FUNC2(ctx->data);

    FUNC0(ctx->nonce);

    FUNC3(ctx->tsa_name);

    FUNC5(ctx);
}