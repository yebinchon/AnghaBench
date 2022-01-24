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
 scalar_t__ TESTBUF_SIZE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct test_tls_crypt_context*) ; 
 scalar_t__ FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(void **state) {
    struct test_tls_crypt_context *ctx = (struct test_tls_crypt_context *) *state;

    FUNC8(ctx);

    FUNC6(&ctx->source);
    FUNC4(FUNC7(&ctx->source,
                                    TESTBUF_SIZE - FUNC0(&ctx->ciphertext) - FUNC9()));

    FUNC5(FUNC11(&ctx->source, &ctx->ciphertext, &ctx->co));
    FUNC5(FUNC0(&ctx->source) < FUNC0(&ctx->ciphertext));
    FUNC5(FUNC10(&ctx->ciphertext, &ctx->unwrapped, &ctx->co));
    FUNC2(FUNC0(&ctx->source), FUNC0(&ctx->unwrapped));
    FUNC3(FUNC1(&ctx->source), FUNC1(&ctx->unwrapped),
                        FUNC0(&ctx->source));
}