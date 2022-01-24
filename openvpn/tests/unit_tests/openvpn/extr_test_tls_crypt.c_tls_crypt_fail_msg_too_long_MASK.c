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
struct test_tls_crypt_context {int /*<<< orphan*/  co; int /*<<< orphan*/  ciphertext; int /*<<< orphan*/  source; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ TESTBUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct test_tls_crypt_context*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void **state) {
    struct test_tls_crypt_context *ctx = (struct test_tls_crypt_context *) *state;

    FUNC5(ctx);

    FUNC3(&ctx->source);
    FUNC2(FUNC4(&ctx->source,
                                    TESTBUF_SIZE - FUNC0(&ctx->ciphertext) - FUNC6() + 1));
    FUNC1(FUNC7(&ctx->source, &ctx->ciphertext, &ctx->co));
}