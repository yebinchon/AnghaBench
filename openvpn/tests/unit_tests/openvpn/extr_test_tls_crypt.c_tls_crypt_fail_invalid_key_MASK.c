#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  decrypt; } ;
struct TYPE_7__ {TYPE_2__ key_ctx_bi; } ;
struct test_tls_crypt_context {TYPE_3__ co; int /*<<< orphan*/  unwrapped; int /*<<< orphan*/  ciphertext; int /*<<< orphan*/  source; int /*<<< orphan*/  kt; } ;
struct TYPE_5__ {int member_0; } ;
struct key {TYPE_1__ member_0; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct key*,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct test_tls_crypt_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC8(void **state) {
    struct test_tls_crypt_context *ctx = (struct test_tls_crypt_context *) *state;

    FUNC5(ctx);

    /* Change decrypt key */
    struct key key = { { 1 } };
    FUNC3(&ctx->co.key_ctx_bi.decrypt);
    FUNC4(&ctx->co.key_ctx_bi.decrypt, &key, &ctx->kt, false, "TEST");

    FUNC2(FUNC7(&ctx->source, &ctx->ciphertext, &ctx->co));
    FUNC2(FUNC0(&ctx->source) < FUNC0(&ctx->ciphertext));
    FUNC1(FUNC6(&ctx->ciphertext, &ctx->unwrapped, &ctx->co));
}