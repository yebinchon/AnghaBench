
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int decrypt; int encrypt; } ;
struct TYPE_6__ {int packet_id; TYPE_1__ key_ctx_bi; } ;
struct TYPE_7__ {int digest; int cipher; } ;
struct test_tls_crypt_context {void* ciphertext; void* source; void* unwrapped; TYPE_2__ co; TYPE_3__ kt; } ;
struct key {int member_0; } ;


 int TESTBUF_SIZE ;
 void* alloc_buf (int ) ;
 int buf_write (void**,char const*,int ) ;
 struct test_tls_crypt_context* calloc (int,int) ;
 int init_key_ctx (int *,struct key*,TYPE_3__*,int,char*) ;
 int packet_id_init (int *,int ,int ,char*,int ) ;
 int strlen (char const*) ;
 TYPE_3__ tls_crypt_kt () ;

__attribute__((used)) static int
test_tls_crypt_setup(void **state) {
    struct test_tls_crypt_context *ctx = calloc(1, sizeof(*ctx));
    *state = ctx;

    struct key key = { 0 };

    ctx->kt = tls_crypt_kt();
    if (!ctx->kt.cipher || !ctx->kt.digest)
    {
        return 0;
    }
    init_key_ctx(&ctx->co.key_ctx_bi.encrypt, &key, &ctx->kt, 1, "TEST");
    init_key_ctx(&ctx->co.key_ctx_bi.decrypt, &key, &ctx->kt, 0, "TEST");

    packet_id_init(&ctx->co.packet_id, 0, 0, "test", 0);

    ctx->source = alloc_buf(TESTBUF_SIZE);
    ctx->ciphertext = alloc_buf(TESTBUF_SIZE);
    ctx->unwrapped = alloc_buf(TESTBUF_SIZE);


    const char *plaintext = "1234567890";
    buf_write(&ctx->source, plaintext, strlen(plaintext));


    const char *ciphertext = "012345678";
    buf_write(&ctx->ciphertext, ciphertext, strlen(ciphertext));

    return 0;
}
