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
struct buffer {int dummy; } ;
struct test_tls_crypt_context {int /*<<< orphan*/  co; int /*<<< orphan*/  unwrapped; struct buffer ciphertext; struct buffer source; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct test_tls_crypt_context*) ; 
 int FUNC5 (struct buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct buffer*,struct buffer*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(void **state) {
    struct test_tls_crypt_context *ctx = (struct test_tls_crypt_context *) *state;

    FUNC4(ctx);

    FUNC2(FUNC6(&ctx->source, &ctx->ciphertext, &ctx->co));
    FUNC2(FUNC0(&ctx->source) < FUNC0(&ctx->ciphertext));
    struct buffer tmp = ctx->ciphertext;
    FUNC2(FUNC5(&tmp, &ctx->unwrapped, &ctx->co));
    FUNC3(&ctx->unwrapped);
    FUNC1(FUNC5(&ctx->ciphertext, &ctx->unwrapped, &ctx->co));
}