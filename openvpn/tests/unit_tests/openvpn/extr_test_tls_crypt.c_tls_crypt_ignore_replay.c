
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct buffer {int dummy; } ;
struct test_tls_crypt_context {TYPE_1__ co; int unwrapped; struct buffer ciphertext; struct buffer source; } ;


 scalar_t__ BLEN (struct buffer*) ;
 int CO_IGNORE_PACKET_ID ;
 int assert_true (int) ;
 int buf_clear (int *) ;
 int skip_if_tls_crypt_not_supported (struct test_tls_crypt_context*) ;
 int tls_crypt_unwrap (struct buffer*,int *,TYPE_1__*) ;
 int tls_crypt_wrap (struct buffer*,struct buffer*,TYPE_1__*) ;

__attribute__((used)) static void
tls_crypt_ignore_replay(void **state) {
    struct test_tls_crypt_context *ctx = (struct test_tls_crypt_context *) *state;

    skip_if_tls_crypt_not_supported(ctx);

    ctx->co.flags |= CO_IGNORE_PACKET_ID;

    assert_true(tls_crypt_wrap(&ctx->source, &ctx->ciphertext, &ctx->co));
    assert_true(BLEN(&ctx->source) < BLEN(&ctx->ciphertext));
    struct buffer tmp = ctx->ciphertext;
    assert_true(tls_crypt_unwrap(&tmp, &ctx->unwrapped, &ctx->co));
    buf_clear(&ctx->unwrapped);
    assert_true(tls_crypt_unwrap(&ctx->ciphertext, &ctx->unwrapped, &ctx->co));
}
