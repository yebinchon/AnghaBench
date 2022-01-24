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
typedef  int /*<<< orphan*/  zero ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; } ;
struct test_tls_crypt_v2_context {int /*<<< orphan*/  unwrapped_metadata; TYPE_1__ server_keys; int /*<<< orphan*/  wkc; int /*<<< orphan*/  gc; int /*<<< orphan*/  metadata; int /*<<< orphan*/  client_key2; } ;
struct key2 {int /*<<< orphan*/  member_0; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ TLS_CRYPT_V2_MAX_METADATA_LEN ; 
 struct buffer FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (struct key2*,struct key2 const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct key2*,struct buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(void **state) {
    struct test_tls_crypt_v2_context *ctx =
            (struct test_tls_crypt_v2_context *) *state;

    uint8_t* metadata =
            FUNC4(&ctx->metadata, TLS_CRYPT_V2_MAX_METADATA_LEN);
    FUNC3(FUNC6(metadata, TLS_CRYPT_V2_MAX_METADATA_LEN));
    FUNC3(FUNC8(&ctx->wkc, &ctx->client_key2,
                                             &ctx->metadata,
                                             &ctx->server_keys.encrypt,
                                             &ctx->gc));

    struct key2 unwrapped_client_key2 = { 0 };
    struct buffer unwrapped_metadata =
            FUNC1(TLS_CRYPT_V2_MAX_METADATA_LEN-1, &ctx->gc);
    FUNC2(FUNC7(&unwrapped_client_key2,
                                                &unwrapped_metadata, ctx->wkc,
                                                &ctx->server_keys.decrypt));

    const struct key2 zero = { 0 };
    FUNC3(0 == FUNC5(&unwrapped_client_key2, &zero, sizeof(zero)));
    FUNC3(0 == FUNC0(&ctx->unwrapped_metadata));
}