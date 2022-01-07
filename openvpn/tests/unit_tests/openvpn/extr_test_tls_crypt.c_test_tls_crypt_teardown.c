
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key_ctx_bi; } ;
struct test_tls_crypt_context {TYPE_1__ co; int unwrapped; int ciphertext; int source; } ;


 int free (struct test_tls_crypt_context*) ;
 int free_buf (int *) ;
 int free_key_ctx_bi (int *) ;

__attribute__((used)) static int
test_tls_crypt_teardown(void **state) {
    struct test_tls_crypt_context *ctx =
            (struct test_tls_crypt_context *)*state;

    free_buf(&ctx->source);
    free_buf(&ctx->ciphertext);
    free_buf(&ctx->unwrapped);

    free_key_ctx_bi(&ctx->co.key_ctx_bi);

    free(ctx);

    return 0;
}
