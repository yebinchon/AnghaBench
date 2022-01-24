#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  session_id_len; int /*<<< orphan*/  session_id; int /*<<< orphan*/  xcghash_len; int /*<<< orphan*/  xcghash; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; int /*<<< orphan*/  digest; } ;
typedef  TYPE_1__ KDF_SSHKDF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *vctx)
{
    KDF_SSHKDF *ctx = (KDF_SSHKDF *)vctx;

    FUNC2(&ctx->digest);
    FUNC0(ctx->key, ctx->key_len);
    FUNC0(ctx->xcghash, ctx->xcghash_len);
    FUNC0(ctx->session_id, ctx->session_id_len);
    FUNC1(ctx, 0, sizeof(*ctx));
}