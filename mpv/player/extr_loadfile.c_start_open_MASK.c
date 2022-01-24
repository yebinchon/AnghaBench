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
struct MPContext {int open_active; int open_url_flags; int open_for_prefetch; int /*<<< orphan*/  open_thread; TYPE_1__* opts; void* open_format; void* open_url; scalar_t__ open_cancel; int /*<<< orphan*/  open_done; int /*<<< orphan*/  open_res_demuxer; } ;
struct TYPE_2__ {char* demuxer_name; scalar_t__ load_unsafe_playlists; scalar_t__ demuxer_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open_demux_thread ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct MPContext*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC6(struct MPContext *mpctx, char *url, int url_flags,
                       bool for_prefetch)
{
    FUNC2(mpctx);

    FUNC0(!mpctx->open_active);
    FUNC0(!mpctx->open_cancel);
    FUNC0(!mpctx->open_res_demuxer);
    FUNC0(!FUNC1(&mpctx->open_done));

    mpctx->open_cancel = FUNC3(NULL);
    mpctx->open_url = FUNC5(NULL, url);
    mpctx->open_format = FUNC5(NULL, mpctx->opts->demuxer_name);
    mpctx->open_url_flags = url_flags;
    mpctx->open_for_prefetch = for_prefetch && mpctx->opts->demuxer_thread;
    if (mpctx->opts->load_unsafe_playlists)
        mpctx->open_url_flags = 0;

    if (FUNC4(&mpctx->open_thread, NULL, open_demux_thread, mpctx)) {
        FUNC2(mpctx);
        return;
    }

    mpctx->open_active = true;
}