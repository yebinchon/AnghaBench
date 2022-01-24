#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ cipher; } ;
struct tls_wrap_ctx {scalar_t__ mode; TYPE_1__ tls_crypt_v2_server_key; int /*<<< orphan*/  opt; } ;
struct tls_options {int dummy; } ;
struct link_socket_actual {int dummy; } ;
struct gc_arena {int dummy; } ;
struct buffer {int /*<<< orphan*/  offset; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC1 (struct buffer*) ; 
 int /*<<< orphan*/  D_TLS_ERRORS ; 
 scalar_t__ const P_CONTROL_HARD_RESET_CLIENT_V3 ; 
 scalar_t__ P_OPCODE_SHIFT ; 
 scalar_t__ SID_SIZE ; 
 scalar_t__ TLS_WRAP_AUTH ; 
 scalar_t__ TLS_WRAP_CRYPT ; 
 scalar_t__ TLS_WRAP_NONE ; 
 struct buffer FUNC2 (int /*<<< orphan*/ ,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer*,struct buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer*,int /*<<< orphan*/ ) ; 
 struct buffer FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct gc_arena*) ; 
 struct gc_arena FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer*,struct buffer,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (struct link_socket_actual const*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer*,struct buffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer*,struct tls_wrap_ctx*,struct tls_options const*) ; 

__attribute__((used)) static bool
FUNC17(struct buffer *buf,
                  struct tls_wrap_ctx *ctx,
                  const struct link_socket_actual *from,
                  const struct tls_options *opt)
{
    struct gc_arena gc = FUNC10();
    bool ret = false;

    const uint8_t opcode = *(FUNC1(buf)) >> P_OPCODE_SHIFT;
    if (opcode == P_CONTROL_HARD_RESET_CLIENT_V3
        && !FUNC16(buf, ctx, opt))
    {
        FUNC11(D_TLS_ERRORS,
            "TLS Error: can not extract tls-crypt-v2 client key from %s",
            FUNC13(from, &gc));
        goto cleanup;
    }

    if (ctx->mode == TLS_WRAP_AUTH)
    {
        struct buffer null = FUNC8();

        /* move the hmac record to the front of the packet */
        if (!FUNC14(buf, &ctx->opt, true))
        {
            FUNC11(D_TLS_ERRORS,
                "TLS Error: cannot locate HMAC in incoming packet from %s",
                FUNC13(from, &gc));
            FUNC9(&gc);
            return false;
        }

        /* authenticate only (no decrypt) and remove the hmac record
         * from the head of the buffer */
        FUNC12(buf, null, &ctx->opt, NULL, FUNC1(buf));
        if (!buf->len)
        {
            FUNC11(D_TLS_ERRORS,
                "TLS Error: incoming packet authentication failed from %s",
                FUNC13(from, &gc));
            goto cleanup;
        }

    }
    else if (ctx->mode == TLS_WRAP_CRYPT)
    {
        struct buffer tmp = FUNC2(FUNC6(buf), &gc);
        if (!FUNC15(buf, &tmp, &ctx->opt))
        {
            FUNC11(D_TLS_ERRORS, "TLS Error: tls-crypt unwrapping failed from %s",
                FUNC13(from, &gc));
            goto cleanup;
        }
        FUNC0(FUNC7(buf, buf->offset));
        FUNC0(FUNC5(buf, &tmp));
        FUNC4(&tmp);
    }
    else if (ctx->tls_crypt_v2_server_key.cipher)
    {
        /* If tls-crypt-v2 is enabled, require *some* wrapping */
        FUNC11(D_TLS_ERRORS, "TLS Error: could not determine wrapping from %s",
            FUNC13(from, &gc));
        /* TODO Do we want to support using tls-crypt-v2 and no control channel
         * wrapping at all simultaneously?  That would allow server admins to
         * upgrade clients one-by-one without running a second instance, but we
         * should not enable it by default because it breaks DoS-protection.
         * So, add something like --tls-crypt-v2-allow-insecure-fallback ? */
        goto cleanup;
    }

    if (ctx->mode == TLS_WRAP_NONE || ctx->mode == TLS_WRAP_AUTH)
    {
        /* advance buffer pointer past opcode & session_id since our caller
         * already read it */
        FUNC3(buf, SID_SIZE + 1);
    }

    ret = true;
cleanup:
    FUNC9(&gc);
    return ret;
}