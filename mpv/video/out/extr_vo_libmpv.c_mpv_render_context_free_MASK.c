#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  control_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  video_wait; int /*<<< orphan*/  update_cond; struct TYPE_11__* dispatch; struct TYPE_11__* dr; struct TYPE_11__* renderer; struct TYPE_11__* priv; TYPE_1__* fns; int /*<<< orphan*/  vo; int /*<<< orphan*/  in_use; int /*<<< orphan*/  client_api; } ;
typedef  TYPE_2__ mpv_render_context ;
struct TYPE_10__ {int /*<<< orphan*/  (* destroy ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

void FUNC13(mpv_render_context *ctx)
{
    if (!ctx)
        return;

    // From here on, ctx becomes invisible and cannot be newly acquired. Only
    // a VO could still hold a reference.
    FUNC6(ctx->client_api, ctx, false);

    if (FUNC1(&ctx->in_use)) {
        // Start destroy the VO, and also bring down the decoder etc., which
        // still might be using the hwdec context or use DR images. The above
        // mp_set_main_render_context() call guarantees it can't come back (so
        // ctx->vo can't change to non-NULL).
        // In theory, this races with vo_libmpv exiting and another VO being
        // used, which is a harmless grotesque corner case.
        FUNC4(ctx->client_api);

        while (FUNC1(&ctx->in_use)) {
            // As a nasty detail, we need to wait until the VO is released, but
            // also need to react to update() calls during it (the update calls
            // are supposed to trigger processing ctx->dispatch). We solve this
            // by making the VO uninit function call mp_dispatch_interrupt().
            //
            // Other than that, processing ctx->dispatch is needed to serve the
            // video decoder, which might still not be fully destroyed, and e.g.
            // performs calls to release DR images (or, as a grotesque corner
            // case may even try to allocate new ones).
            //
            // Once the VO is released, ctx->dispatch becomes truly inactive.
            // (The libmpv API user could call mpv_render_context_update() while
            // mpv_render_context_free() is being called, but of course this is
            // invalid.)
            FUNC5(ctx->dispatch, INFINITY);
        }
    }

    FUNC9(&ctx->lock);
    // Barrier - guarantee uninit() has left the lock region. It will access ctx
    // until the lock has been released, so we must not proceed with destruction
    // before we can acquire the lock. (The opposite, uninit() acquiring the
    // lock, can not happen anymore at this point - we've waited for VO uninit,
    // and prevented that new VOs can be created.)
    FUNC10(&ctx->lock);

    FUNC0(!FUNC1(&ctx->in_use));
    FUNC0(!ctx->vo);

    // With the dispatch queue not being served anymore, allow frame free
    // requests from this thread to be served directly.
    if (ctx->dr)
        FUNC2(ctx->dr);

    // Possibly remaining outstanding work.
    FUNC5(ctx->dispatch, 0);

    FUNC3(ctx, true);

    if (ctx->renderer) {
        ctx->renderer->fns->destroy(ctx->renderer);
        FUNC12(ctx->renderer->priv);
        FUNC12(ctx->renderer);
    }
    FUNC12(ctx->dr);
    FUNC12(ctx->dispatch);

    FUNC7(&ctx->update_cond);
    FUNC7(&ctx->video_wait);
    FUNC8(&ctx->update_lock);
    FUNC8(&ctx->lock);
    FUNC8(&ctx->control_lock);

    FUNC12(ctx);
}