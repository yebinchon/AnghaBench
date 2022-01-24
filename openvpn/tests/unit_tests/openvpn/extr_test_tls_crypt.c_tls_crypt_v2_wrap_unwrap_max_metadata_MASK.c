#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct tls_wrap_ctx {int /*<<< orphan*/  tls_crypt_v2_server_key; int /*<<< orphan*/  mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  encrypt; int /*<<< orphan*/  decrypt; } ;
struct TYPE_4__ {int /*<<< orphan*/  keys; } ;
struct test_tls_crypt_v2_context {int /*<<< orphan*/  wkc; TYPE_1__ server_keys; int /*<<< orphan*/  metadata; TYPE_2__ client_key2; int /*<<< orphan*/  gc; } ;
struct key2 {int /*<<< orphan*/  keys; int /*<<< orphan*/  member_0; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLS_CRYPT_V2_MAX_METADATA_LEN ; 
 int /*<<< orphan*/  TLS_WRAP_CRYPT ; 
 struct buffer FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct buffer*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct tls_wrap_ctx*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct key2*,struct buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct tls_wrap_ctx*) ; 

__attribute__((used)) static void
FUNC10(void **state) {
    struct test_tls_crypt_v2_context *ctx =
            (struct test_tls_crypt_v2_context *) *state;

    uint8_t* metadata =
            FUNC3(&ctx->metadata, TLS_CRYPT_V2_MAX_METADATA_LEN);
    FUNC1(FUNC5(metadata, TLS_CRYPT_V2_MAX_METADATA_LEN));
    FUNC1(FUNC8(&ctx->wkc, &ctx->client_key2,
                                             &ctx->metadata,
                                             &ctx->server_keys.encrypt,
                                             &ctx->gc));

    struct buffer unwrap_metadata = FUNC0(TLS_CRYPT_V2_MAX_METADATA_LEN,
                                                 &ctx->gc);
    struct key2 unwrapped_client_key2 = { 0 };
    FUNC1(FUNC7(&unwrapped_client_key2,
                                               &unwrap_metadata, ctx->wkc,
                                               &ctx->server_keys.decrypt));

    FUNC1(0 == FUNC4(ctx->client_key2.keys, unwrapped_client_key2.keys,
                            sizeof(ctx->client_key2.keys)));
    FUNC1(FUNC2(&ctx->metadata, &unwrap_metadata));

    struct tls_wrap_ctx wrap_ctx = {
            .mode = TLS_WRAP_CRYPT,
            .tls_crypt_v2_server_key = ctx->server_keys.encrypt,
    };
    FUNC1(FUNC6(&ctx->wkc, &wrap_ctx, NULL));
    FUNC9(&wrap_ctx);
}