
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct track {scalar_t__ dec; struct dec_sub* d_sub; } ;
struct m_config_option {int dummy; } ;
struct dec_sub {int dummy; } ;
struct command_ctx {void* cur_ipc_input; void* cur_ipc; } ;
struct MPOpts {void* input_file; void* ipc_path; } ;
struct MPContext {scalar_t__ video_out; int global; int clients; int ipc_ctx; struct MPOpts* opts; int input; struct track*** current_track; int osd; struct command_ctx* command_ctx; } ;


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
 int VOCTRL_EXTERNAL_RESIZE ;
 int audio_update_volume (struct MPContext*) ;
 int bstr0 (void*) ;
 int bstr_equals (int ,int ) ;
 int mp_decoder_wrapper_reset_params (scalar_t__) ;
 int mp_force_video_refresh (struct MPContext*) ;
 int mp_init_ipc (int ,int ) ;
 int mp_input_update_opts (int ) ;
 int mp_load_builtin_scripts (struct MPContext*) ;
 int mp_uninit_ipc (int ) ;
 int mp_update_logging (struct MPContext*,int) ;
 int mp_wakeup_core (struct MPContext*) ;
 int osd_changed (int ) ;
 int reload_audio_output (struct MPContext*) ;
 int sub_update_opts (struct dec_sub*) ;
 int talloc_free (void*) ;
 void* talloc_strdup (struct command_ctx*,void*) ;
 int update_lavfi_complex (struct MPContext*) ;
 int update_priority (struct MPContext*) ;
 int update_screensaver_state (struct MPContext*) ;
 int vo_control (scalar_t__,int ,int *) ;

void mp_option_change_callback(void *ctx, struct m_config_option *co, int flags)
{
    struct MPContext *mpctx = ctx;
    struct command_ctx *cmd = mpctx->command_ctx;

    if (flags & UPDATE_TERM)
        mp_update_logging(mpctx, 0);

    if (flags & UPDATE_OSD) {
        for (int n = 0; n < NUM_PTRACKS; n++) {
            struct track *track = mpctx->current_track[n][STREAM_SUB];
            struct dec_sub *sub = track ? track->d_sub : ((void*)0);
            if (sub)
                sub_update_opts(track->d_sub);
        }
        osd_changed(mpctx->osd);
        mp_wakeup_core(mpctx);
    }

    if (flags & UPDATE_BUILTIN_SCRIPTS)
        mp_load_builtin_scripts(mpctx);

    if (flags & UPDATE_IMGPAR) {
        struct track *track = mpctx->current_track[0][STREAM_VIDEO];
        if (track && track->dec) {
            mp_decoder_wrapper_reset_params(track->dec);
            mp_force_video_refresh(mpctx);
        }
    }

    if (flags & UPDATE_INPUT) {
        mp_input_update_opts(mpctx->input);


        struct MPOpts *opts = mpctx->opts;
        if (!bstr_equals(bstr0(cmd->cur_ipc), bstr0(opts->ipc_path)) ||
            !bstr_equals(bstr0(cmd->cur_ipc_input), bstr0(opts->input_file)))
        {
            talloc_free(cmd->cur_ipc);
            talloc_free(cmd->cur_ipc_input);
            cmd->cur_ipc = talloc_strdup(cmd, opts->ipc_path);
            cmd->cur_ipc_input = talloc_strdup(cmd, opts->input_file);
            mp_uninit_ipc(mpctx->ipc_ctx);
            mpctx->ipc_ctx = mp_init_ipc(mpctx->clients, mpctx->global);
        }
    }

    if (flags & UPDATE_AUDIO)
        reload_audio_output(mpctx);

    if (flags & UPDATE_PRIORITY)
        update_priority(mpctx);

    if (flags & UPDATE_SCREENSAVER)
        update_screensaver_state(mpctx);

    if (flags & UPDATE_VOL)
        audio_update_volume(mpctx);

    if (flags & UPDATE_LAVFI_COMPLEX)
        update_lavfi_complex(mpctx);

    if (flags & UPDATE_VO_RESIZE) {
        if (mpctx->video_out)
            vo_control(mpctx->video_out, VOCTRL_EXTERNAL_RESIZE, ((void*)0));
    }
}
