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
typedef  int /*<<< orphan*/  uint16_t ;
struct key_ctx {int /*<<< orphan*/ * hmac; int /*<<< orphan*/ * cipher; } ;
struct key2 {scalar_t__ keys; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;
typedef  int /*<<< orphan*/  net_len ;
typedef  int /*<<< orphan*/  hmac_ctx_t ;
typedef  int /*<<< orphan*/  cipher_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 int FUNC2 (struct buffer const*) ; 
 void* FUNC3 (struct buffer const*) ; 
 int /*<<< orphan*/  D_CRYPTO_DEBUG ; 
 int /*<<< orphan*/  M_WARN ; 
 int /*<<< orphan*/  TLS_CRYPT_TAG_SIZE ; 
 scalar_t__ TLS_CRYPT_V2_MAX_WKC_LEN ; 
 scalar_t__ TLS_CRYPT_V2_TAG_SIZE ; 
 struct buffer FUNC4 (scalar_t__,struct gc_arena*) ; 
 int FUNC5 (struct buffer*,struct buffer*) ; 
 scalar_t__ FUNC6 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (struct buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,void*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool
FUNC21(struct buffer *wkc,
                             const struct key2 *src_key,
                             const struct buffer *src_metadata,
                             struct key_ctx *server_key, struct gc_arena *gc)
{
    cipher_ctx_t *cipher_ctx = server_key->cipher;
    struct buffer work = FUNC4(TLS_CRYPT_V2_MAX_WKC_LEN
                                      + FUNC10(cipher_ctx), gc);

    /* Calculate auth tag and synthetic IV */
    uint8_t *tag = FUNC9(&work, TLS_CRYPT_TAG_SIZE);
    if (!tag)
    {
        FUNC20(M_WARN, "ERROR: could not write tag");
        return false;
    }
    uint16_t net_len = FUNC19(sizeof(src_key->keys) + FUNC2(src_metadata)
                             + TLS_CRYPT_V2_TAG_SIZE + sizeof(uint16_t));
    hmac_ctx_t *hmac_ctx = server_key->hmac;
    FUNC17(hmac_ctx);
    FUNC18(hmac_ctx, (void *)&net_len, sizeof(net_len));
    FUNC18(hmac_ctx, (void *)src_key->keys, sizeof(src_key->keys));
    FUNC18(hmac_ctx, FUNC3(src_metadata), FUNC2(src_metadata));
    FUNC16(hmac_ctx, tag);

    FUNC14(D_CRYPTO_DEBUG, "TLS-CRYPT WRAP TAG: %s",
         FUNC15(tag, TLS_CRYPT_TAG_SIZE, 0, gc));

    /* Use the 128 most significant bits of the tag as IV */
    FUNC0(FUNC12(cipher_ctx, tag));

    /* Overflow check (OpenSSL requires an extra block in the dst buffer) */
    if (FUNC6(&work) < (sizeof(src_key->keys)
                                       + FUNC2(src_metadata)
                                       + sizeof(net_len)
                                       + FUNC10(cipher_ctx)))
    {
        FUNC20(M_WARN, "ERROR: could not crypt: insufficient space in dst");
        return false;
    }

    /* Encrypt */
    int outlen = 0;
    FUNC0(FUNC13(cipher_ctx, FUNC1(&work), &outlen,
                             (void *)src_key->keys, sizeof(src_key->keys)));
    FUNC0(FUNC7(&work, outlen));
    FUNC0(FUNC13(cipher_ctx, FUNC1(&work), &outlen,
                             FUNC3(src_metadata), FUNC2(src_metadata)));
    FUNC0(FUNC7(&work, outlen));
    FUNC0(FUNC11(cipher_ctx, FUNC1(&work), &outlen));
    FUNC0(FUNC7(&work, outlen));
    FUNC0(FUNC8(&work, &net_len, sizeof(net_len)));

    return FUNC5(wkc, &work);
}