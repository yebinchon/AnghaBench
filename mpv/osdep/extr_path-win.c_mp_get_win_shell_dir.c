
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int REFKNOWNFOLDERID ;


 int CoTaskMemFree (int *) ;
 scalar_t__ FAILED (int ) ;
 int KF_FLAG_CREATE ;
 int SHGetKnownFolderPath (int ,int ,int *,int **) ;
 char* mp_to_utf8 (void*,int *) ;

__attribute__((used)) static char *mp_get_win_shell_dir(void *talloc_ctx, REFKNOWNFOLDERID folder)
{
    wchar_t *w_appdir = ((void*)0);

    if (FAILED(SHGetKnownFolderPath(folder, KF_FLAG_CREATE, ((void*)0), &w_appdir)))
        return ((void*)0);

    char *appdir = mp_to_utf8(talloc_ctx, w_appdir);
    CoTaskMemFree(w_appdir);
    return appdir;
}
