
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int encrypt; } ;
struct test_tls_crypt_v2_context {int gc; TYPE_1__ server_keys; int metadata; int client_key2; int wkc; } ;


 scalar_t__ TLS_CRYPT_V2_MAX_METADATA_LEN ;
 int assert_false (int ) ;
 int assert_true (int ) ;
 int buf_inc_len (int *,scalar_t__) ;
 int tls_crypt_v2_wrap_client_key (int *,int *,int *,int *,int *) ;

__attribute__((used)) static void
tls_crypt_v2_wrap_too_long_metadata(void **state) {
    struct test_tls_crypt_v2_context *ctx =
            (struct test_tls_crypt_v2_context *) *state;

    assert_true(buf_inc_len(&ctx->metadata, TLS_CRYPT_V2_MAX_METADATA_LEN+1));
    assert_false(tls_crypt_v2_wrap_client_key(&ctx->wkc, &ctx->client_key2,
                                              &ctx->metadata,
                                              &ctx->server_keys.encrypt,
                                              &ctx->gc));
}
