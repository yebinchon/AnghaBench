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
struct encode_lavc_context {double last_audio_in_pts; int /*<<< orphan*/  lock; scalar_t__ samples_since_last_pts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct encode_lavc_context *ctx, double pts)
{
    if (ctx) {
        FUNC0(&ctx->lock);
        ctx->last_audio_in_pts = pts;
        ctx->samples_since_last_pts = 0;
        FUNC1(&ctx->lock);
    }
}