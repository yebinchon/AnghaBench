
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct tls_wrap_ctx {int tls_crypt_v2_server_key; int mode; } ;
struct TYPE_3__ {int encrypt; int decrypt; } ;
struct TYPE_4__ {int keys; } ;
struct test_tls_crypt_v2_context {int wkc; TYPE_1__ server_keys; int metadata; TYPE_2__ client_key2; int gc; } ;
struct key2 {int keys; int member_0; } ;
struct buffer {int dummy; } ;


 int TLS_CRYPT_V2_MAX_METADATA_LEN ;
 int TLS_WRAP_CRYPT ;
 struct buffer alloc_buf_gc (int ,int *) ;
 int assert_true (int) ;
 int buf_equal (int *,struct buffer*) ;
 int * buf_write_alloc (int *,int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int rand_bytes (int *,int ) ;
 int tls_crypt_v2_extract_client_key (int *,struct tls_wrap_ctx*,int *) ;
 int tls_crypt_v2_unwrap_client_key (struct key2*,struct buffer*,int ,int *) ;
 int tls_crypt_v2_wrap_client_key (int *,TYPE_2__*,int *,int *,int *) ;
 int tls_wrap_free (struct tls_wrap_ctx*) ;

__attribute__((used)) static void
tls_crypt_v2_wrap_unwrap_max_metadata(void **state) {
    struct test_tls_crypt_v2_context *ctx =
            (struct test_tls_crypt_v2_context *) *state;

    uint8_t* metadata =
            buf_write_alloc(&ctx->metadata, TLS_CRYPT_V2_MAX_METADATA_LEN);
    assert_true(rand_bytes(metadata, TLS_CRYPT_V2_MAX_METADATA_LEN));
    assert_true(tls_crypt_v2_wrap_client_key(&ctx->wkc, &ctx->client_key2,
                                             &ctx->metadata,
                                             &ctx->server_keys.encrypt,
                                             &ctx->gc));

    struct buffer unwrap_metadata = alloc_buf_gc(TLS_CRYPT_V2_MAX_METADATA_LEN,
                                                 &ctx->gc);
    struct key2 unwrapped_client_key2 = { 0 };
    assert_true(tls_crypt_v2_unwrap_client_key(&unwrapped_client_key2,
                                               &unwrap_metadata, ctx->wkc,
                                               &ctx->server_keys.decrypt));

    assert_true(0 == memcmp(ctx->client_key2.keys, unwrapped_client_key2.keys,
                            sizeof(ctx->client_key2.keys)));
    assert_true(buf_equal(&ctx->metadata, &unwrap_metadata));

    struct tls_wrap_ctx wrap_ctx = {
            .mode = TLS_WRAP_CRYPT,
            .tls_crypt_v2_server_key = ctx->server_keys.encrypt,
    };
    assert_true(tls_crypt_v2_extract_client_key(&ctx->wkc, &wrap_ctx, ((void*)0)));
    tls_wrap_free(&wrap_ctx);
}
