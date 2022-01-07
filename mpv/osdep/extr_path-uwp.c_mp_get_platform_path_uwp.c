
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ GetCurrentDirectoryW (int,int *) ;
 int _MAX_PATH ;
 char const* mp_to_utf8 (void*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

const char *mp_get_platform_path_uwp(void *talloc_ctx, const char *type)
{
    if (strcmp(type, "home") == 0) {
        wchar_t homeDir[_MAX_PATH];
        if (GetCurrentDirectoryW(_MAX_PATH, homeDir) != 0)
            return mp_to_utf8(talloc_ctx, homeDir);
    }
    return ((void*)0);
}
