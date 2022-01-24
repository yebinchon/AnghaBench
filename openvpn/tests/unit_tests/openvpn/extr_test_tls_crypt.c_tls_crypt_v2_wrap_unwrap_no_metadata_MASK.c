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
struct TYPE_4__ {int /*<<< orphan*/  keys; } ;
struct TYPE_3__ {int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; } ;
struct test_tls_crypt_v2_context {TYPE_2__ client_key2; TYPE_1__ server_keys; int /*<<< orphan*/  gc; int /*<<< orphan*/  metadata; } ;
struct key2 {int /*<<< orphan*/  keys; int /*<<< orphan*/  member_0; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLS_CRYPT_V2_MAX_METADATA_LEN ; 
 int /*<<< orphan*/  TLS_CRYPT_V2_MAX_WKC_LEN ; 
 struct buffer FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct key2*,struct buffer*,struct buffer,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct buffer*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void **state) {
    struct test_tls_crypt_v2_context *ctx =
            (struct test_tls_crypt_v2_context *) *state;

    struct buffer wrapped_client_key = FUNC0(TLS_CRYPT_V2_MAX_WKC_LEN,
                                                    &ctx->gc);
    FUNC1(FUNC4(&wrapped_client_key,
                                             &ctx->client_key2,
                                             &ctx->metadata,
                                             &ctx->server_keys.encrypt,
                                             &ctx->gc));

    struct buffer unwrap_metadata = FUNC0(TLS_CRYPT_V2_MAX_METADATA_LEN,
                                                 &ctx->gc);
    struct key2 unwrapped_client_key2 = { 0 };
    FUNC1(FUNC3(&unwrapped_client_key2,
                                               &unwrap_metadata,
                                               wrapped_client_key,
                                               &ctx->server_keys.decrypt));

    FUNC1(0 == FUNC2(ctx->client_key2.keys, unwrapped_client_key2.keys,
                            sizeof(ctx->client_key2.keys)));
}