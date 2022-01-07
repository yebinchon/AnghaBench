
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_tls_crypt_v2_context {int gc; int client_key; int server_keys; } ;


 int free (struct test_tls_crypt_v2_context*) ;
 int free_key_ctx_bi (int *) ;
 int gc_free (int *) ;

__attribute__((used)) static int
test_tls_crypt_v2_teardown(void **state) {
    struct test_tls_crypt_v2_context *ctx =
            (struct test_tls_crypt_v2_context *) *state;

    free_key_ctx_bi(&ctx->server_keys);
    free_key_ctx_bi(&ctx->client_key);

    gc_free(&ctx->gc);

    free(ctx);

    return 0;
}
