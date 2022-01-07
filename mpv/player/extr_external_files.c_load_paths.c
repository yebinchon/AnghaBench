
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subfn {int dummy; } ;
struct mpv_global {int dummy; } ;
struct MPOpts {int dummy; } ;


 int append_dir_subtitles (struct mpv_global*,struct MPOpts*,struct subfn**,int*,int ,char const*,int,int) ;
 int bstr0 (char*) ;
 int mp_dirname (char const*) ;
 char* mp_find_config_file (int *,struct mpv_global*,char*) ;
 char* mp_get_user_path (int *,struct mpv_global*,char*) ;
 char* mp_path_join_bstr (struct subfn*,int ,int ) ;
 int talloc_free (char*) ;

__attribute__((used)) static void load_paths(struct mpv_global *global, struct MPOpts *opts,
                       struct subfn **slist, int *nsubs, const char *fname,
                       char **paths, char *cfg_path, int type)
{
    for (int i = 0; paths && paths[i]; i++) {
        char *expanded_path = mp_get_user_path(((void*)0), global, paths[i]);
        char *path = mp_path_join_bstr(
            *slist, mp_dirname(fname),
            bstr0(expanded_path ? expanded_path : paths[i]));
        append_dir_subtitles(global, opts, slist, nsubs, bstr0(path),
                             fname, 0, type);
        talloc_free(expanded_path);
    }


    char *mp_subdir = mp_find_config_file(((void*)0), global, cfg_path);
    if (mp_subdir) {
        append_dir_subtitles(global, opts, slist, nsubs, bstr0(mp_subdir),
                             fname, 1, type);
    }
    talloc_free(mp_subdir);
}
