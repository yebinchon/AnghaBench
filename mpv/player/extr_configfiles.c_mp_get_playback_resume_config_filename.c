
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct MPOpts {char* watch_later_directory; scalar_t__ ignore_path_in_watch_later_config; } ;
struct MPContext {char* cached_watch_later_configdir; int global; struct MPOpts* opts; } ;
typedef int bstr ;


 int MP_WATCH_LATER_CONF ;
 int av_md5_sum (int *,char const*,int ) ;
 int bstr0 (char const*) ;
 char* mp_basename (char const*) ;
 char* mp_find_user_config_file (struct MPContext*,int ,int ) ;
 char* mp_get_user_path (struct MPContext*,int ,char*) ;
 char* mp_getcwd (void*) ;
 int mp_is_url (int ) ;
 void* mp_path_join (void*,char*,char const*) ;
 int strlen (char const*) ;
 char* talloc_asprintf_append (char*,char*,int ) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;
 char* talloc_strdup (void*,char*) ;

__attribute__((used)) static char *mp_get_playback_resume_config_filename(struct MPContext *mpctx,
                                                    const char *fname)
{
    struct MPOpts *opts = mpctx->opts;
    char *res = ((void*)0);
    void *tmp = talloc_new(((void*)0));
    const char *realpath = fname;
    bstr bfname = bstr0(fname);
    if (!mp_is_url(bfname)) {
        if (opts->ignore_path_in_watch_later_config) {
            realpath = mp_basename(fname);
        } else {
            char *cwd = mp_getcwd(tmp);
            if (!cwd)
                goto exit;
            realpath = mp_path_join(tmp, cwd, fname);
        }
    }
    uint8_t md5[16];
    av_md5_sum(md5, realpath, strlen(realpath));
    char *conf = talloc_strdup(tmp, "");
    for (int i = 0; i < 16; i++)
        conf = talloc_asprintf_append(conf, "%02X", md5[i]);

    if (!mpctx->cached_watch_later_configdir) {
        char *wl_dir = mpctx->opts->watch_later_directory;
        if (wl_dir && wl_dir[0]) {
            mpctx->cached_watch_later_configdir =
                mp_get_user_path(mpctx, mpctx->global, wl_dir);
        }
    }

    if (!mpctx->cached_watch_later_configdir) {
        mpctx->cached_watch_later_configdir =
            mp_find_user_config_file(mpctx, mpctx->global, MP_WATCH_LATER_CONF);
    }

    if (mpctx->cached_watch_later_configdir)
        res = mp_path_join(((void*)0), mpctx->cached_watch_later_configdir, conf);

exit:
    talloc_free(tmp);
    return res;
}
