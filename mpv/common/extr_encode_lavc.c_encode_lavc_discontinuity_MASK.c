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
struct encode_lavc_context {int /*<<< orphan*/  lock; void* discontinuity_pts_offset; void* audio_pts_offset; } ;

/* Variables and functions */
 void* MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct encode_lavc_context *ctx)
{
    if (!ctx)
        return;

    FUNC0(&ctx->lock);

    ctx->audio_pts_offset = MP_NOPTS_VALUE;
    ctx->discontinuity_pts_offset = MP_NOPTS_VALUE;

    FUNC1(&ctx->lock);
}