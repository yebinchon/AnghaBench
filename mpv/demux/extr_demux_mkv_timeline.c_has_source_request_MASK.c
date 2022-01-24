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
struct tl_ctx {int num_sources; int /*<<< orphan*/ * uids; } ;
struct matroska_segment_uid {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct matroska_segment_uid*) ; 

__attribute__((used)) static bool FUNC1(struct tl_ctx *ctx,
                               struct matroska_segment_uid *new_uid)
{
    for (int i = 0; i < ctx->num_sources; ++i) {
        if (FUNC0(&ctx->uids[i], new_uid))
            return true;
    }
    return false;
}