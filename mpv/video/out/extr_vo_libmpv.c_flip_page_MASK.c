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
struct vo_priv {struct mpv_render_context* ctx; } ;
struct vo {struct vo_priv* priv; } ;
struct timespec {int dummy; } ;
struct mpv_render_context {int present_count; scalar_t__ expected_flip_count; scalar_t__ flip_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  video_wait; int /*<<< orphan*/ * next_frame; int /*<<< orphan*/ * cur_frame; scalar_t__ redrawing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 struct timespec FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vo*,int) ; 

__attribute__((used)) static void FUNC9(struct vo *vo)
{
    struct vo_priv *p = vo->priv;
    struct mpv_render_context *ctx = p->ctx;
    struct timespec ts = FUNC1(0.2);

    FUNC5(&ctx->lock);

    // Wait until frame was rendered
    while (ctx->next_frame) {
        if (FUNC4(&ctx->video_wait, &ctx->lock, &ts)) {
            if (ctx->next_frame) {
                FUNC0(vo, "mpv_render_context_render() not being called "
                           "or stuck.\n");
                goto done;
            }
        }
    }

    // Unblock mpv_render_context_render().
    ctx->present_count += 1;
    FUNC2(&ctx->video_wait);

    if (ctx->redrawing)
        goto done; // do not block for redrawing

    // Wait until frame was presented
    while (ctx->expected_flip_count > ctx->flip_count) {
        // mpv_render_report_swap() is declared as optional API.
        // Assume the user calls it consistently _if_ it's called at all.
        if (!ctx->flip_count)
            break;
        if (FUNC4(&ctx->video_wait, &ctx->lock, &ts)) {
            FUNC0(vo, "mpv_render_report_swap() not being called.\n");
            goto done;
        }
    }

done:

    // Cleanup after the API user is not reacting, or is being unusually slow.
    if (ctx->next_frame) {
        FUNC7(ctx->cur_frame);
        ctx->cur_frame = ctx->next_frame;
        ctx->next_frame = NULL;
        ctx->present_count += 2;
        FUNC3(&ctx->video_wait);
        FUNC8(vo, 1);
    }

    FUNC6(&ctx->lock);
}