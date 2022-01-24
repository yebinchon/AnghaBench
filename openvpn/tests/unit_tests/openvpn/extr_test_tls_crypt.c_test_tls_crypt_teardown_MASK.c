#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  key_ctx_bi; } ;
struct test_tls_crypt_context {TYPE_1__ co; int /*<<< orphan*/  unwrapped; int /*<<< orphan*/  ciphertext; int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct test_tls_crypt_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(void **state) {
    struct test_tls_crypt_context *ctx =
            (struct test_tls_crypt_context *)*state;

    FUNC1(&ctx->source);
    FUNC1(&ctx->ciphertext);
    FUNC1(&ctx->unwrapped);

    FUNC2(&ctx->co.key_ctx_bi);

    FUNC0(ctx);

    return 0;
}