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
struct MPContext {int open_active; int /*<<< orphan*/  open_done; scalar_t__ open_format; scalar_t__ open_url; scalar_t__ open_cancel; int /*<<< orphan*/ * open_res_demuxer; int /*<<< orphan*/  open_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct MPContext *mpctx)
{
    if (mpctx->open_cancel)
        FUNC3(mpctx->open_cancel);

    if (mpctx->open_active)
        FUNC4(mpctx->open_thread, NULL);
    mpctx->open_active = false;

    if (mpctx->open_res_demuxer)
        FUNC2(mpctx->open_res_demuxer);
    mpctx->open_res_demuxer = NULL;

    FUNC0(&mpctx->open_cancel);
    FUNC0(&mpctx->open_url);
    FUNC0(&mpctx->open_format);

    FUNC1(&mpctx->open_done, false);
}