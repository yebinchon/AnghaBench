#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; } ;
struct TYPE_6__ {int /*<<< orphan*/  packet_id; TYPE_1__ key_ctx_bi; } ;
struct TYPE_7__ {int /*<<< orphan*/  digest; int /*<<< orphan*/  cipher; } ;
struct test_tls_crypt_context {void* ciphertext; void* source; void* unwrapped; TYPE_2__ co; TYPE_3__ kt; } ;
struct key {int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  TESTBUF_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,char const*,int /*<<< orphan*/ ) ; 
 struct test_tls_crypt_context* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct key*,TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 TYPE_3__ FUNC6 () ; 

__attribute__((used)) static int
FUNC7(void **state) {
    struct test_tls_crypt_context *ctx = FUNC2(1, sizeof(*ctx));
    *state = ctx;

    struct key key = { 0 };

    ctx->kt = FUNC6();
    if (!ctx->kt.cipher || !ctx->kt.digest)
    {
        return 0;
    }
    FUNC3(&ctx->co.key_ctx_bi.encrypt, &key, &ctx->kt, true, "TEST");
    FUNC3(&ctx->co.key_ctx_bi.decrypt, &key, &ctx->kt, false, "TEST");

    FUNC4(&ctx->co.packet_id, 0, 0, "test", 0);

    ctx->source = FUNC0(TESTBUF_SIZE);
    ctx->ciphertext = FUNC0(TESTBUF_SIZE);
    ctx->unwrapped = FUNC0(TESTBUF_SIZE);

    /* Write test plaintext */
    const char *plaintext = "1234567890";
    FUNC1(&ctx->source, plaintext, FUNC5(plaintext));

    /* Write test ciphertext */
    const char *ciphertext = "012345678";
    FUNC1(&ctx->ciphertext, ciphertext, FUNC5(ciphertext));

    return 0;
}