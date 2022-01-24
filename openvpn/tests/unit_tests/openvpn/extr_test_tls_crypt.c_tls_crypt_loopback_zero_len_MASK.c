#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct test_tls_crypt_context {int /*<<< orphan*/  source; int /*<<< orphan*/  unwrapped; int /*<<< orphan*/  co; int /*<<< orphan*/  ciphertext; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct test_tls_crypt_context*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(void **state) {
    struct test_tls_crypt_context *ctx = (struct test_tls_crypt_context *) *state;

    FUNC6(ctx);

    FUNC5(&ctx->source);

    FUNC4(FUNC8(&ctx->source, &ctx->ciphertext, &ctx->co));
    FUNC4(FUNC0(&ctx->source) < FUNC0(&ctx->ciphertext));
    FUNC4(FUNC7(&ctx->ciphertext, &ctx->unwrapped, &ctx->co));
    FUNC2(FUNC0(&ctx->source), FUNC0(&ctx->unwrapped));
    FUNC3(FUNC1(&ctx->source), FUNC1(&ctx->unwrapped),
                        FUNC0(&ctx->source));
}