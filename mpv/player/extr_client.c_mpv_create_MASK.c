#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct MPContext {int /*<<< orphan*/  clients; int /*<<< orphan*/  mconfig; } ;
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_7__ {TYPE_1__* clients; } ;
typedef  TYPE_2__ mpv_handle ;
struct TYPE_6__ {int have_terminator; } ;

/* Variables and functions */
 int /*<<< orphan*/  core_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct MPContext* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct MPContext*) ; 

mpv_handle *FUNC6(void)
{
    struct MPContext *mpctx = FUNC1();
    if (!mpctx)
        return NULL;

    FUNC0(mpctx->mconfig, "libmpv", 0);

    mpv_handle *ctx = FUNC3(mpctx->clients, "main");
    if (!ctx) {
        FUNC2(mpctx);
        return NULL;
    }

    pthread_t thread;
    if (FUNC5(&thread, NULL, core_thread, mpctx) != 0) {
        ctx->clients->have_terminator = true; // avoid blocking
        FUNC4(ctx);
        FUNC2(mpctx);
        return NULL;
    }

    return ctx;
}