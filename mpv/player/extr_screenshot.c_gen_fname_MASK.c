#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mp_cmd_ctx {struct MPContext* mpctx; } ;
struct MPContext {TYPE_2__* screenshot_ctx; } ;
struct TYPE_5__ {TYPE_3__* mpctx; int /*<<< orphan*/  frameno; } ;
typedef  TYPE_2__ screenshot_ctx ;
struct TYPE_6__ {int /*<<< orphan*/  global; TYPE_1__* opts; } ;
struct TYPE_4__ {char* screenshot_directory; int /*<<< orphan*/  screenshot_template; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGL_ERR ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char const*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_cmd_ctx*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static char *FUNC9(struct mp_cmd_ctx *cmd, const char *file_ext)
{
    struct MPContext *mpctx = cmd->mpctx;
    screenshot_ctx *ctx = mpctx->screenshot_ctx;

    int sequence = 0;
    for (;;) {
        int prev_sequence = sequence;
        char *fname = FUNC1(ctx->mpctx,
                                   ctx->mpctx->opts->screenshot_template,
                                   file_ext,
                                   &sequence,
                                   &ctx->frameno);

        if (!fname) {
            FUNC2(cmd, MSGL_ERR, "Invalid screenshot filename "
                       "template! Fix or remove the --screenshot-template "
                       "option.");
            return NULL;
        }

        char *dir = ctx->mpctx->opts->screenshot_directory;
        if (dir && dir[0]) {
            void *t = fname;
            dir = FUNC4(t, ctx->mpctx->global, dir);
            fname = FUNC7(NULL, dir, fname);

            FUNC5(dir);

            FUNC8(t);
        }

        char *full_dir = FUNC0(fname, FUNC3(fname));
        if (!FUNC6(full_dir)) {
            FUNC5(full_dir);
        }

        if (!FUNC6(fname))
            return fname;

        if (sequence == prev_sequence) {
            FUNC2(cmd, MSGL_ERR, "Can't save screenshot, file '%s' "
                       "already exists!", fname);
            FUNC8(fname);
            return NULL;
        }

        FUNC8(fname);
    }
}