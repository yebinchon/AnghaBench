#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct MPOpts {int operation_mode; int force_vo; TYPE_1__* encode_opts; int /*<<< orphan*/  player_idle_mode; scalar_t__* test_mode; int /*<<< orphan*/  verbose; } ;
struct MPContext {int initialized; int /*<<< orphan*/  input; TYPE_2__* mconfig; int /*<<< orphan*/  encode_lavc_ctx; int /*<<< orphan*/  global; int /*<<< orphan*/  clients; int /*<<< orphan*/  log; TYPE_5__* playlist; struct MPOpts* opts; } ;
typedef  int /*<<< orphan*/  mpv_handle ;
struct TYPE_8__ {int /*<<< orphan*/  first; } ;
struct TYPE_7__ {struct MPContext* option_change_callback_ctx; int /*<<< orphan*/  (* option_change_callback ) (struct MPContext*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;struct MPContext* option_set_callback_cb; int /*<<< orphan*/  option_set_callback; } ;
struct TYPE_6__ {scalar_t__* file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,char*,...) ; 
 int /*<<< orphan*/  MP_INPUT_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  MSGL_FATAL ; 
 int M_OPT_EXIT ; 
 int /*<<< orphan*/  M_SETOPT_NO_OVERWRITE ; 
 int /*<<< orphan*/  UPDATE_OPTS_MASK ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct MPContext*,int) ; 
 scalar_t__ FUNC9 (struct MPContext*) ; 
 int FUNC10 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct MPContext*) ; 
 int /*<<< orphan*/  mp_help_text ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct MPOpts*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct MPContext*) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mp_null_log ; 
 int /*<<< orphan*/  mp_on_set_option ; 
 int /*<<< orphan*/  FUNC19 (struct MPContext*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (struct MPContext*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (struct MPContext*) ; 

int FUNC25(struct MPContext *mpctx, char **options)
{
    struct MPOpts *opts = mpctx->opts;

    FUNC5(!mpctx->initialized);

    // Preparse the command line, so we can init the terminal early.
    if (options) {
        FUNC11(mpctx->mconfig, mpctx->global,
                                       &opts->verbose, options);
    }

    FUNC14(mpctx->global, opts);
    FUNC22(mpctx, true);

    if (options) {
        FUNC3(mpctx, "Command line options:");
        for (int i = 0; options[i]; i++)
            FUNC3(mpctx, " '%s'", options[i]);
        FUNC3(mpctx, "\n");
    }

    FUNC21(mpctx->log, false);

    FUNC20(mpctx);

    if (options) {
        int r = FUNC10(mpctx->mconfig, mpctx->playlist,
                                               mpctx->global, options);
        if (r < 0)
            return r == M_OPT_EXIT ? 1 : -1;
    }

    if (opts->operation_mode == 1) {
        FUNC12(mpctx->mconfig, "builtin-pseudo-gui",
                             M_SETOPT_NO_OVERWRITE);
        FUNC12(mpctx->mconfig, "pseudo-gui", 0);
    }

    FUNC13(mpctx);

    FUNC16(mpctx->input);

    // From this point on, all mpctx members are initialized.
    mpctx->initialized = true;
    mpctx->mconfig->option_set_callback = mp_on_set_option;
    mpctx->mconfig->option_set_callback_cb = mpctx;
    mpctx->mconfig->option_change_callback = mp_option_change_callback;
    mpctx->mconfig->option_change_callback_ctx = mpctx;
    // Run all update handlers.
    FUNC19(mpctx, NULL, UPDATE_OPTS_MASK);

    if (FUNC9(mpctx))
        return 1; // help

    if (!FUNC23(mp_null_log, 0)) {
        FUNC23(mpctx->log, MSGL_FATAL);
        FUNC0(mpctx, "\nmpv was compiled against an incompatible version of "
                 "FFmpeg/Libav than the shared\nlibrary it is linked against. "
                 "This is most likely a broken build and could\nresult in "
                 "misbehavior and crashes.\n\nThis is a broken build.\n");
        return -1;
    }

#if HAVE_TESTS
    if (opts->test_mode && opts->test_mode[0])
        return run_tests(mpctx) ? 1 : -1;
#endif

    if (!mpctx->playlist->first && !opts->player_idle_mode) {
        // nothing to play
        FUNC21(mpctx->log, true);
        FUNC1(mpctx, "%s", mp_help_text);
        return 1;
    }

    FUNC2(mpctx, "start init");

#if HAVE_COCOA
    mpv_handle *ctx = mp_new_client(mpctx->clients, "osx");
    cocoa_set_mpv_handle(ctx);
#endif

    if (opts->encode_opts->file && opts->encode_opts->file[0]) {
        mpctx->encode_lavc_ctx = FUNC7(mpctx->global);
        if(!mpctx->encode_lavc_ctx) {
            FUNC1(mpctx, "Encoding initialization failed.\n");
            return -1;
        }
        FUNC12(mpctx->mconfig, "encoding", 0);
        FUNC15(mpctx->input, "encode", MP_INPUT_EXCLUSIVE);
    }

#if !HAVE_LIBASS
    FUNC4(mpctx, "Compiled without libass.\n");
    FUNC4(mpctx, "There will be no OSD and no text subtitles.\n");
#endif

    FUNC17(mpctx);

    if (opts->force_vo == 2 && FUNC8(mpctx, false) < 0)
        return -1;

    FUNC2(mpctx, "end init");

    return 0;
}