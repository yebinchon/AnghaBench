
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FOLDERID_Desktop ;
 char const* mp_get_win_app_dir (void*) ;
 char const* mp_get_win_exe_dir (void*) ;
 char const* mp_get_win_exe_subdir (void*,char*) ;
 char const* mp_get_win_shell_dir (void*,int *) ;
 int path_init ;
 int path_init_once ;
 char const* portable_path ;
 int pthread_once (int *,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

const char *mp_get_platform_path_win(void *talloc_ctx, const char *type)
{
    pthread_once(&path_init_once, path_init);
    if (portable_path) {
        if (strcmp(type, "home") == 0)
            return portable_path;
    } else {
        if (strcmp(type, "home") == 0)
            return mp_get_win_app_dir(talloc_ctx);
        if (strcmp(type, "old_home") == 0)
            return mp_get_win_exe_dir(talloc_ctx);

        if (strcmp(type, "global") == 0)
            return mp_get_win_exe_subdir(talloc_ctx, "mpv");
    }
    if (strcmp(type, "desktop") == 0)
        return mp_get_win_shell_dir(talloc_ctx, &FOLDERID_Desktop);
    return ((void*)0);
}
