#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct key_ctx {size_t implicit_iv_len; int /*<<< orphan*/  implicit_iv; int /*<<< orphan*/  cipher; } ;
typedef  int /*<<< orphan*/  packet_id_type ;
typedef  int /*<<< orphan*/  cipher_kt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int OPENVPN_AEAD_MIN_IV_LEN ; 
 size_t OPENVPN_MAX_IV_LENGTH ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC5(struct key_ctx *ctx, uint8_t *key, size_t key_len)
{
    const cipher_kt_t *cipher_kt = FUNC1(ctx->cipher);

    /* Only use implicit IV in AEAD cipher mode, where HMAC key is not used */
    if (FUNC3(cipher_kt))
    {
        size_t impl_iv_len = 0;
        FUNC0(FUNC2(cipher_kt) >= OPENVPN_AEAD_MIN_IV_LEN);
        impl_iv_len = FUNC2(cipher_kt) - sizeof(packet_id_type);
        FUNC0(impl_iv_len <= OPENVPN_MAX_IV_LENGTH);
        FUNC0(impl_iv_len <= key_len);
        FUNC4(ctx->implicit_iv, key, impl_iv_len);
        ctx->implicit_iv_len = impl_iv_len;
    }
}