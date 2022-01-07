
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zero ;
struct TYPE_4__ {int decrypt; int encrypt; } ;
struct TYPE_5__ {int keys; } ;
struct test_tls_crypt_v2_context {int unwrapped_metadata; TYPE_1__ server_keys; int wkc; TYPE_2__ server_key2; int gc; int metadata; int client_key2; } ;
struct key_type {int dummy; } ;
struct key2 {int member_0; } ;


 scalar_t__ BLEN (int *) ;
 int KEY_DIRECTION_BIDIRECTIONAL ;
 int assert_false (int ) ;
 int assert_true (int) ;
 int free_key_ctx_bi (TYPE_1__*) ;
 int init_key_ctx_bi (TYPE_1__*,TYPE_2__*,int ,struct key_type*,char*) ;
 scalar_t__ memcmp (struct key2*,struct key2 const*,int) ;
 int memset (int *,int ,int) ;
 struct key_type tls_crypt_kt () ;
 int tls_crypt_v2_unwrap_client_key (struct key2*,int *,int ,int *) ;
 int tls_crypt_v2_wrap_client_key (int *,int *,int *,int *,int *) ;

__attribute__((used)) static void
tls_crypt_v2_wrap_unwrap_wrong_key(void **state) {
    struct test_tls_crypt_v2_context *ctx =
            (struct test_tls_crypt_v2_context *) *state;

    assert_true(tls_crypt_v2_wrap_client_key(&ctx->wkc, &ctx->client_key2,
                                             &ctx->metadata,
                                             &ctx->server_keys.encrypt,
                                             &ctx->gc));


    struct key_type kt = tls_crypt_kt();
    free_key_ctx_bi(&ctx->server_keys);
    memset(&ctx->server_key2.keys, 0, sizeof(ctx->server_key2.keys));
    init_key_ctx_bi(&ctx->server_keys, &ctx->server_key2,
                    KEY_DIRECTION_BIDIRECTIONAL, &kt,
                    "wrong tls-crypt-v2 server key");


    struct key2 unwrapped_client_key2 = { 0 };
    assert_false(tls_crypt_v2_unwrap_client_key(&unwrapped_client_key2,
                                                &ctx->unwrapped_metadata,
                                                ctx->wkc,
                                                &ctx->server_keys.decrypt));

    const struct key2 zero = { 0 };
    assert_true(0 == memcmp(&unwrapped_client_key2, &zero, sizeof(zero)));
    assert_true(0 == BLEN(&ctx->unwrapped_metadata));
}
