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
struct TYPE_3__ {int /*<<< orphan*/  info_len; int /*<<< orphan*/  info; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; int /*<<< orphan*/  salt; int /*<<< orphan*/  digest; } ;
typedef  TYPE_1__ KDF_HKDF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *vctx)
{
    KDF_HKDF *ctx = (KDF_HKDF *)vctx;

    FUNC4(&ctx->digest);
    FUNC2(ctx->salt);
    FUNC1(ctx->key, ctx->key_len);
    FUNC0(ctx->info, ctx->info_len);
    FUNC3(ctx, 0, sizeof(*ctx));
}