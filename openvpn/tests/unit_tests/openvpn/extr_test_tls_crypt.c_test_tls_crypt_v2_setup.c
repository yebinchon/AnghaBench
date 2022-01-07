
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; scalar_t__ keys; } ;
struct TYPE_4__ {int n; scalar_t__ keys; } ;
struct test_tls_crypt_v2_context {TYPE_1__ client_key2; TYPE_2__ server_key2; int server_keys; int gc; void* wkc; void* unwrapped_metadata; void* metadata; } ;
struct key_type {int dummy; } ;


 int KEY_DIRECTION_BIDIRECTIONAL ;
 scalar_t__ TLS_CRYPT_V2_MAX_METADATA_LEN ;
 scalar_t__ TLS_CRYPT_V2_MAX_WKC_LEN ;
 void* alloc_buf_gc (scalar_t__,int *) ;
 struct test_tls_crypt_v2_context* calloc (int,int) ;
 int gc_new () ;
 int init_key_ctx_bi (int *,TYPE_2__*,int ,struct key_type*,char*) ;
 int rand_bytes (void*,int) ;
 struct key_type tls_crypt_kt () ;

__attribute__((used)) static int
test_tls_crypt_v2_setup(void **state) {
    struct test_tls_crypt_v2_context *ctx = calloc(1, sizeof(*ctx));
    *state = ctx;

    ctx->gc = gc_new();


    ctx->metadata = alloc_buf_gc(TLS_CRYPT_V2_MAX_METADATA_LEN+16, &ctx->gc);
    ctx->unwrapped_metadata = alloc_buf_gc(TLS_CRYPT_V2_MAX_METADATA_LEN+16,
                                           &ctx->gc);
    ctx->wkc = alloc_buf_gc(TLS_CRYPT_V2_MAX_WKC_LEN+16, &ctx->gc);


    rand_bytes((void *)ctx->server_key2.keys, sizeof(ctx->server_key2.keys));
    ctx->server_key2.n = 2;
    struct key_type kt = tls_crypt_kt();
    init_key_ctx_bi(&ctx->server_keys, &ctx->server_key2,
                    KEY_DIRECTION_BIDIRECTIONAL, &kt,
                    "tls-crypt-v2 server key");


    rand_bytes((void *)ctx->client_key2.keys, sizeof(ctx->client_key2.keys));
    ctx->client_key2.n = 2;

    return 0;
}
