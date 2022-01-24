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
struct TYPE_3__ {int /*<<< orphan*/  seedlen; int /*<<< orphan*/  seed; int /*<<< orphan*/  seclen; int /*<<< orphan*/  sec; int /*<<< orphan*/  P_sha1; int /*<<< orphan*/  P_hash; } ;
typedef  TYPE_1__ TLS1_PRF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(void *vctx)
{
    TLS1_PRF *ctx = (TLS1_PRF *)vctx;

    FUNC0(ctx->P_hash);
    FUNC0(ctx->P_sha1);
    FUNC2(ctx->sec, ctx->seclen);
    FUNC1(ctx->seed, ctx->seedlen);
    FUNC3(ctx, 0, sizeof(*ctx));
}