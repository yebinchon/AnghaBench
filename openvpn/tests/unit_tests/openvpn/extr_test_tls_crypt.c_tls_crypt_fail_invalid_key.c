
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int decrypt; } ;
struct TYPE_7__ {TYPE_2__ key_ctx_bi; } ;
struct test_tls_crypt_context {TYPE_3__ co; int unwrapped; int ciphertext; int source; int kt; } ;
struct TYPE_5__ {int member_0; } ;
struct key {TYPE_1__ member_0; } ;


 scalar_t__ BLEN (int *) ;
 int assert_false (int ) ;
 int assert_true (int) ;
 int free_key_ctx (int *) ;
 int init_key_ctx (int *,struct key*,int *,int,char*) ;
 int skip_if_tls_crypt_not_supported (struct test_tls_crypt_context*) ;
 int tls_crypt_unwrap (int *,int *,TYPE_3__*) ;
 int tls_crypt_wrap (int *,int *,TYPE_3__*) ;

__attribute__((used)) static void
tls_crypt_fail_invalid_key(void **state) {
    struct test_tls_crypt_context *ctx = (struct test_tls_crypt_context *) *state;

    skip_if_tls_crypt_not_supported(ctx);


    struct key key = { { 1 } };
    free_key_ctx(&ctx->co.key_ctx_bi.decrypt);
    init_key_ctx(&ctx->co.key_ctx_bi.decrypt, &key, &ctx->kt, 0, "TEST");

    assert_true(tls_crypt_wrap(&ctx->source, &ctx->ciphertext, &ctx->co));
    assert_true(BLEN(&ctx->source) < BLEN(&ctx->ciphertext));
    assert_false(tls_crypt_unwrap(&ctx->ciphertext, &ctx->unwrapped, &ctx->co));
}
