
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_tls_crypt_context {int co; int ciphertext; int source; } ;


 scalar_t__ BLEN (int *) ;
 scalar_t__ TESTBUF_SIZE ;
 int assert_false (int ) ;
 int assert_non_null (int ) ;
 int buf_clear (int *) ;
 int buf_write_alloc (int *,scalar_t__) ;
 int skip_if_tls_crypt_not_supported (struct test_tls_crypt_context*) ;
 scalar_t__ tls_crypt_buf_overhead () ;
 int tls_crypt_wrap (int *,int *,int *) ;

__attribute__((used)) static void
tls_crypt_fail_msg_too_long(void **state) {
    struct test_tls_crypt_context *ctx = (struct test_tls_crypt_context *) *state;

    skip_if_tls_crypt_not_supported(ctx);

    buf_clear(&ctx->source);
    assert_non_null(buf_write_alloc(&ctx->source,
                                    TESTBUF_SIZE - BLEN(&ctx->ciphertext) - tls_crypt_buf_overhead() + 1));
    assert_false(tls_crypt_wrap(&ctx->source, &ctx->ciphertext, &ctx->co));
}
