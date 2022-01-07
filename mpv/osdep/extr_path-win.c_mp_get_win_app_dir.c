
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FOLDERID_RoamingAppData ;
 char* mp_get_win_shell_dir (void*,int *) ;
 char* mp_path_join (void*,char*,char*) ;

__attribute__((used)) static char *mp_get_win_app_dir(void *talloc_ctx)
{
    char *path = mp_get_win_shell_dir(talloc_ctx, &FOLDERID_RoamingAppData);
    return path ? mp_path_join(talloc_ctx, path, "mpv") : ((void*)0);
}
