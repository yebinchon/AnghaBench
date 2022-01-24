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
struct mp_sws_context {int /*<<< orphan*/  dst_filter; int /*<<< orphan*/  src_filter; int /*<<< orphan*/  sws; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *p)
{
    struct mp_sws_context *ctx = p;
    FUNC0(ctx->sws);
    FUNC1(ctx->src_filter);
    FUNC1(ctx->dst_filter);
}