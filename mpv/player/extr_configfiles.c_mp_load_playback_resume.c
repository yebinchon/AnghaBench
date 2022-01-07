
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {int mconfig; TYPE_1__* opts; } ;
struct TYPE_2__ {int position_resume; } ;


 int MP_INFO (struct MPContext*,char*) ;
 int MSGL_V ;
 int M_SETOPT_PRESERVE_CMDLINE ;
 int m_config_backup_opt (int ,char*) ;
 char* mp_get_playback_resume_config_filename (struct MPContext*,char const*) ;
 scalar_t__ mp_path_exists (char*) ;
 int talloc_free (char*) ;
 int try_load_config (struct MPContext*,char*,int ,int ) ;
 int unlink (char*) ;

void mp_load_playback_resume(struct MPContext *mpctx, const char *file)
{
    if (!mpctx->opts->position_resume)
        return;
    char *fname = mp_get_playback_resume_config_filename(mpctx, file);
    if (fname && mp_path_exists(fname)) {

        m_config_backup_opt(mpctx->mconfig, "start");
        MP_INFO(mpctx, "Resuming playback. This behavior can "
               "be disabled with --no-resume-playback.\n");
        try_load_config(mpctx, fname, M_SETOPT_PRESERVE_CMDLINE, MSGL_V);
        unlink(fname);
    }
    talloc_free(fname);
}
