#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zero ;
struct TYPE_4__ {int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; } ;
struct TYPE_5__ {int /*<<< orphan*/  keys; } ;
struct test_tls_crypt_v2_context {int /*<<< orphan*/  unwrapped_metadata; TYPE_1__ server_keys; int /*<<< orphan*/  wkc; TYPE_2__ server_key2; int /*<<< orphan*/  gc; int /*<<< orphan*/  metadata; int /*<<< orphan*/  client_key2; } ;
struct key_type {int dummy; } ;
struct key2 {int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_DIRECTION_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,struct key_type*,char*) ; 
 scalar_t__ FUNC5 (struct key2*,struct key2 const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct key_type FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct key2*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(void **state) {
    struct test_tls_crypt_v2_context *ctx =
            (struct test_tls_crypt_v2_context *) *state;

    FUNC2(FUNC9(&ctx->wkc, &ctx->client_key2,
                                             &ctx->metadata,
                                             &ctx->server_keys.encrypt,
                                             &ctx->gc));

    /* Change server key */
    struct key_type kt = FUNC7();
    FUNC3(&ctx->server_keys);
    FUNC6(&ctx->server_key2.keys, 0, sizeof(ctx->server_key2.keys));
    FUNC4(&ctx->server_keys, &ctx->server_key2,
                    KEY_DIRECTION_BIDIRECTIONAL, &kt,
                    "wrong tls-crypt-v2 server key");


    struct key2 unwrapped_client_key2 = { 0 };
    FUNC1(FUNC8(&unwrapped_client_key2,
                                                &ctx->unwrapped_metadata,
                                                ctx->wkc,
                                                &ctx->server_keys.decrypt));

    const struct key2 zero = { 0 };
    FUNC2(0 == FUNC5(&unwrapped_client_key2, &zero, sizeof(zero)));
    FUNC2(0 == FUNC0(&ctx->unwrapped_metadata));
}