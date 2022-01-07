
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct MPOpts {int operation_mode; int force_vo; TYPE_1__* encode_opts; int player_idle_mode; scalar_t__* test_mode; int verbose; } ;
struct MPContext {int initialized; int input; TYPE_2__* mconfig; int encode_lavc_ctx; int global; int clients; int log; TYPE_5__* playlist; struct MPOpts* opts; } ;
typedef int mpv_handle ;
struct TYPE_8__ {int first; } ;
struct TYPE_7__ {struct MPContext* option_change_callback_ctx; int (* option_change_callback ) (struct MPContext*,int *,int ) ;struct MPContext* option_set_callback_cb; int option_set_callback; } ;
struct TYPE_6__ {scalar_t__* file; } ;


 int MP_FATAL (struct MPContext*,char*) ;
 int MP_INFO (struct MPContext*,char*,...) ;
 int MP_INPUT_EXCLUSIVE ;
 int MP_STATS (struct MPContext*,char*) ;
 int MP_VERBOSE (struct MPContext*,char*,...) ;
 int MP_WARN (struct MPContext*,char*) ;
 int MSGL_FATAL ;
 int M_OPT_EXIT ;
 int M_SETOPT_NO_OVERWRITE ;
 int UPDATE_OPTS_MASK ;
 int assert (int) ;
 int cocoa_set_mpv_handle (int *) ;
 int encode_lavc_init (int ) ;
 scalar_t__ handle_force_window (struct MPContext*,int) ;
 scalar_t__ handle_help_options (struct MPContext*) ;
 int m_config_parse_mp_command_line (TYPE_2__*,TYPE_5__*,int ,char**) ;
 int m_config_preparse_command_line (TYPE_2__*,int ,int *,char**) ;
 int m_config_set_profile (TYPE_2__*,char*,int ) ;
 int mp_get_resume_defaults (struct MPContext*) ;
 int mp_help_text ;
 int mp_init_paths (int ,struct MPOpts*) ;
 int mp_input_enable_section (int ,char*,int ) ;
 int mp_input_load_config (int ) ;
 int mp_load_scripts (struct MPContext*) ;
 int * mp_new_client (int ,char*) ;
 int mp_null_log ;
 int mp_on_set_option ;
 int mp_option_change_callback (struct MPContext*,int *,int ) ;
 int mp_parse_cfgfiles (struct MPContext*) ;
 int mp_print_version (int ,int) ;
 int mp_update_logging (struct MPContext*,int) ;
 int print_libav_versions (int ,int ) ;
 scalar_t__ run_tests (struct MPContext*) ;

int mp_initialize(struct MPContext *mpctx, char **options)
{
    struct MPOpts *opts = mpctx->opts;

    assert(!mpctx->initialized);


    if (options) {
        m_config_preparse_command_line(mpctx->mconfig, mpctx->global,
                                       &opts->verbose, options);
    }

    mp_init_paths(mpctx->global, opts);
    mp_update_logging(mpctx, 1);

    if (options) {
        MP_VERBOSE(mpctx, "Command line options:");
        for (int i = 0; options[i]; i++)
            MP_VERBOSE(mpctx, " '%s'", options[i]);
        MP_VERBOSE(mpctx, "\n");
    }

    mp_print_version(mpctx->log, 0);

    mp_parse_cfgfiles(mpctx);

    if (options) {
        int r = m_config_parse_mp_command_line(mpctx->mconfig, mpctx->playlist,
                                               mpctx->global, options);
        if (r < 0)
            return r == M_OPT_EXIT ? 1 : -1;
    }

    if (opts->operation_mode == 1) {
        m_config_set_profile(mpctx->mconfig, "builtin-pseudo-gui",
                             M_SETOPT_NO_OVERWRITE);
        m_config_set_profile(mpctx->mconfig, "pseudo-gui", 0);
    }

    mp_get_resume_defaults(mpctx);

    mp_input_load_config(mpctx->input);


    mpctx->initialized = 1;
    mpctx->mconfig->option_set_callback = mp_on_set_option;
    mpctx->mconfig->option_set_callback_cb = mpctx;
    mpctx->mconfig->option_change_callback = mp_option_change_callback;
    mpctx->mconfig->option_change_callback_ctx = mpctx;

    mp_option_change_callback(mpctx, ((void*)0), UPDATE_OPTS_MASK);

    if (handle_help_options(mpctx))
        return 1;

    if (!print_libav_versions(mp_null_log, 0)) {
        print_libav_versions(mpctx->log, MSGL_FATAL);
        MP_FATAL(mpctx, "\nmpv was compiled against an incompatible version of "
                 "FFmpeg/Libav than the shared\nlibrary it is linked against. "
                 "This is most likely a broken build and could\nresult in "
                 "misbehavior and crashes.\n\nThis is a broken build.\n");
        return -1;
    }






    if (!mpctx->playlist->first && !opts->player_idle_mode) {

        mp_print_version(mpctx->log, 1);
        MP_INFO(mpctx, "%s", mp_help_text);
        return 1;
    }

    MP_STATS(mpctx, "start init");






    if (opts->encode_opts->file && opts->encode_opts->file[0]) {
        mpctx->encode_lavc_ctx = encode_lavc_init(mpctx->global);
        if(!mpctx->encode_lavc_ctx) {
            MP_INFO(mpctx, "Encoding initialization failed.\n");
            return -1;
        }
        m_config_set_profile(mpctx->mconfig, "encoding", 0);
        mp_input_enable_section(mpctx->input, "encode", MP_INPUT_EXCLUSIVE);
    }


    MP_WARN(mpctx, "Compiled without libass.\n");
    MP_WARN(mpctx, "There will be no OSD and no text subtitles.\n");


    mp_load_scripts(mpctx);

    if (opts->force_vo == 2 && handle_force_window(mpctx, 0) < 0)
        return -1;

    MP_STATS(mpctx, "end init");

    return 0;
}
