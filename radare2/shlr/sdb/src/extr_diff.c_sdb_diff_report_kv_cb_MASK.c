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
struct TYPE_2__ {int /*<<< orphan*/  add; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ SdbDiffKVCbCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void *user, const char *k, const char *v) {
	const SdbDiffKVCbCtx *ctx = user;
	FUNC0 (ctx->ctx, k, v, ctx->add);
	return true;
}