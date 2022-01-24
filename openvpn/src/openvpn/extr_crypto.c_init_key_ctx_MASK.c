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
struct key_type {int cipher_length; int hmac_length; scalar_t__ digest; scalar_t__ cipher; } ;
struct key_ctx {int /*<<< orphan*/  hmac; int /*<<< orphan*/  cipher; } ;
struct key {int /*<<< orphan*/  hmac; int /*<<< orphan*/  cipher; } ;
struct gc_arena {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct key_ctx) ; 
 int /*<<< orphan*/  D_CRYPTO_DEBUG ; 
 int /*<<< orphan*/  D_HANDSHAKE ; 
 int /*<<< orphan*/  D_SHOW_KEYS ; 
 int /*<<< orphan*/  M_WARN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC9 (struct gc_arena*) ; 
 struct gc_arena FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (scalar_t__) ; 
 int FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 

void
FUNC18(struct key_ctx *ctx, const struct key *key,
             const struct key_type *kt, int enc,
             const char *prefix)
{
    struct gc_arena gc = FUNC10();
    FUNC0(*ctx);
    if (kt->cipher && kt->cipher_length > 0)
    {

        ctx->cipher = FUNC2();
        FUNC1(ctx->cipher, key->cipher, kt->cipher_length,
                        kt->cipher, enc);

        FUNC16(D_HANDSHAKE, "%s: Cipher '%s' initialized with %d bit key",
            prefix,
            FUNC17(FUNC6(kt->cipher)),
            kt->cipher_length *8);

        FUNC7(D_SHOW_KEYS, "%s: CIPHER KEY: %s", prefix,
             FUNC8(key->cipher, kt->cipher_length, 0, &gc));
        FUNC7(D_CRYPTO_DEBUG, "%s: CIPHER block_size=%d iv_size=%d",
             prefix, FUNC3(kt->cipher),
             FUNC5(kt->cipher));
        if (FUNC4(kt->cipher))
        {
            FUNC16(M_WARN, "WARNING: INSECURE cipher with block size less than 128"
                " bit (%d bit).  This allows attacks like SWEET32.  Mitigate by "
                "using a --cipher with a larger block size (e.g. AES-256-CBC).",
                FUNC3(kt->cipher)*8);
        }
    }
    if (kt->digest && kt->hmac_length > 0)
    {
        ctx->hmac = FUNC12();
        FUNC11(ctx->hmac, key->hmac, kt->hmac_length, kt->digest);

        FUNC16(D_HANDSHAKE,
            "%s: Using %d bit message hash '%s' for HMAC authentication",
            prefix, FUNC15(kt->digest) * 8, FUNC14(kt->digest));

        FUNC7(D_SHOW_KEYS, "%s: HMAC KEY: %s", prefix,
             FUNC8(key->hmac, kt->hmac_length, 0, &gc));

        FUNC7(D_CRYPTO_DEBUG, "%s: HMAC size=%d block_size=%d",
             prefix,
             FUNC15(kt->digest),
             FUNC13(ctx->hmac));

    }
    FUNC9(&gc);
}