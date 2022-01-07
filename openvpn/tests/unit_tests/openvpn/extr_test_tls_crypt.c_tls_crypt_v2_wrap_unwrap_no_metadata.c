
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int keys; } ;
struct TYPE_3__ {int decrypt; int encrypt; } ;
struct test_tls_crypt_v2_context {TYPE_2__ client_key2; TYPE_1__ server_keys; int gc; int metadata; } ;
struct key2 {int keys; int member_0; } ;
struct buffer {int dummy; } ;


 int TLS_CRYPT_V2_MAX_METADATA_LEN ;
 int TLS_CRYPT_V2_MAX_WKC_LEN ;
 struct buffer alloc_buf_gc (int ,int *) ;
 int assert_true (int) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int tls_crypt_v2_unwrap_client_key (struct key2*,struct buffer*,struct buffer,int *) ;
 int tls_crypt_v2_wrap_client_key (struct buffer*,TYPE_2__*,int *,int *,int *) ;

__attribute__((used)) static void
tls_crypt_v2_wrap_unwrap_no_metadata(void **state) {
    struct test_tls_crypt_v2_context *ctx =
            (struct test_tls_crypt_v2_context *) *state;

    struct buffer wrapped_client_key = alloc_buf_gc(TLS_CRYPT_V2_MAX_WKC_LEN,
                                                    &ctx->gc);
    assert_true(tls_crypt_v2_wrap_client_key(&wrapped_client_key,
                                             &ctx->client_key2,
                                             &ctx->metadata,
                                             &ctx->server_keys.encrypt,
                                             &ctx->gc));

    struct buffer unwrap_metadata = alloc_buf_gc(TLS_CRYPT_V2_MAX_METADATA_LEN,
                                                 &ctx->gc);
    struct key2 unwrapped_client_key2 = { 0 };
    assert_true(tls_crypt_v2_unwrap_client_key(&unwrapped_client_key2,
                                               &unwrap_metadata,
                                               wrapped_client_key,
                                               &ctx->server_keys.decrypt));

    assert_true(0 == memcmp(ctx->client_key2.keys, unwrapped_client_key2.keys,
                            sizeof(ctx->client_key2.keys)));
}
