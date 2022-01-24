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
struct track {scalar_t__ dec; struct dec_sub* d_sub; } ;
struct m_config_option {int dummy; } ;
struct dec_sub {int dummy; } ;
struct command_ctx {void* cur_ipc_input; void* cur_ipc; } ;
struct MPOpts {void* input_file; void* ipc_path; } ;
struct MPContext {scalar_t__ video_out; int /*<<< orphan*/  global; int /*<<< orphan*/  clients; int /*<<< orphan*/  ipc_ctx; struct MPOpts* opts; int /*<<< orphan*/  input; struct track*** current_track; int /*<<< orphan*/  osd; struct command_ctx* command_ctx; } ;

/* Variables and functions */
 int NUM_PTRACKS ; 
 size_t STREAM_SUB ; 
 size_t STREAM_VIDEO ; 
 int UPDATE_AUDIO ; 
 int UPDATE_BUILTIN_SCRIPTS ; 
 int UPDATE_IMGPAR ; 
 int UPDATE_INPUT ; 
 int UPDATE_LAVFI_COMPLEX ; 
 int UPDATE_OSD ; 
 int UPDATE_PRIORITY ; 
 int UPDATE_SCREENSAVER ; 
 int UPDATE_TERM ; 
 int UPDATE_VOL ; 
 int UPDATE_VO_RESIZE ; 
 int /*<<< orphan*/  VOCTRL_EXTERNAL_RESIZE ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct MPContext*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC13 (struct dec_sub*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 void* FUNC15 (struct command_ctx*,void*) ; 
 int /*<<< orphan*/  FUNC16 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC17 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC18 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC20(void *ctx, struct m_config_option *co, int flags)
{
    struct MPContext *mpctx = ctx;
    struct command_ctx *cmd = mpctx->command_ctx;

    if (flags & UPDATE_TERM)
        FUNC9(mpctx, false);

    if (flags & UPDATE_OSD) {
        for (int n = 0; n < NUM_PTRACKS; n++) {
            struct track *track = mpctx->current_track[n][STREAM_SUB];
            struct dec_sub *sub = track ? track->d_sub : NULL;
            if (sub)
                FUNC13(track->d_sub);
        }
        FUNC11(mpctx->osd);
        FUNC10(mpctx);
    }

    if (flags & UPDATE_BUILTIN_SCRIPTS)
        FUNC7(mpctx);

    if (flags & UPDATE_IMGPAR) {
        struct track *track = mpctx->current_track[0][STREAM_VIDEO];
        if (track && track->dec) {
            FUNC3(track->dec);
            FUNC4(mpctx);
        }
    }

    if (flags & UPDATE_INPUT) {
        FUNC6(mpctx->input);

        // Rather coarse change-detection, but sufficient effort.
        struct MPOpts *opts = mpctx->opts;
        if (!FUNC2(FUNC1(cmd->cur_ipc), FUNC1(opts->ipc_path)) ||
            !FUNC2(FUNC1(cmd->cur_ipc_input), FUNC1(opts->input_file)))
        {
            FUNC14(cmd->cur_ipc);
            FUNC14(cmd->cur_ipc_input);
            cmd->cur_ipc = FUNC15(cmd, opts->ipc_path);
            cmd->cur_ipc_input = FUNC15(cmd, opts->input_file);
            FUNC8(mpctx->ipc_ctx);
            mpctx->ipc_ctx = FUNC5(mpctx->clients, mpctx->global);
        }
    }

    if (flags & UPDATE_AUDIO)
        FUNC12(mpctx);

    if (flags & UPDATE_PRIORITY)
        FUNC17(mpctx);

    if (flags & UPDATE_SCREENSAVER)
        FUNC18(mpctx);

    if (flags & UPDATE_VOL)
        FUNC0(mpctx);

    if (flags & UPDATE_LAVFI_COMPLEX)
        FUNC16(mpctx);

    if (flags & UPDATE_VO_RESIZE) {
        if (mpctx->video_out)
            FUNC19(mpctx->video_out, VOCTRL_EXTERNAL_RESIZE, NULL);
    }
}