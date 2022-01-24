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
struct test_tls_crypt_v2_context {int /*<<< orphan*/  gc; int /*<<< orphan*/  client_key; int /*<<< orphan*/  server_keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct test_tls_crypt_v2_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(void **state) {
    struct test_tls_crypt_v2_context *ctx =
            (struct test_tls_crypt_v2_context *) *state;

    FUNC1(&ctx->server_keys);
    FUNC1(&ctx->client_key);

    FUNC2(&ctx->gc);

    FUNC0(ctx);

    return 0;
}