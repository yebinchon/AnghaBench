
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPOpts {scalar_t__ use_filedir_conf; } ;
struct MPContext {char* filename; int global; struct MPOpts* opts; } ;
typedef int cfg ;
typedef int bstr ;


 int FILE_LOCAL_FLAGS ;
 int MP_VERBOSE (struct MPContext*,char*) ;
 int MSGL_INFO ;
 int bstr0 (char*) ;
 char* mp_basename (char*) ;
 int mp_dirname (char*) ;
 char* mp_find_config_file (int *,int ,char*) ;
 char* mp_path_join_bstr (int *,int ,int ) ;
 int snprintf (char*,int,char*,char const*) ;
 int talloc_free (char*) ;
 scalar_t__ try_load_config (struct MPContext*,char*,int ,int ) ;

__attribute__((used)) static void mp_load_per_file_config(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;
    char *confpath;
    char cfg[512];
    const char *file = mpctx->filename;

    if (opts->use_filedir_conf) {
        if (snprintf(cfg, sizeof(cfg), "%s.conf", file) >= sizeof(cfg)) {
            MP_VERBOSE(mpctx, "Filename is too long, can not load file or "
                              "directory specific config files\n");
            return;
        }

        char *name = mp_basename(cfg);

        bstr dir = mp_dirname(cfg);
        char *dircfg = mp_path_join_bstr(((void*)0), dir, bstr0("mpv.conf"));
        try_load_config(mpctx, dircfg, FILE_LOCAL_FLAGS, MSGL_INFO);
        talloc_free(dircfg);

        if (try_load_config(mpctx, cfg, FILE_LOCAL_FLAGS, MSGL_INFO))
            return;

        if ((confpath = mp_find_config_file(((void*)0), mpctx->global, name))) {
            try_load_config(mpctx, confpath, FILE_LOCAL_FLAGS, MSGL_INFO);

            talloc_free(confpath);
        }
    }
}
