
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPWSTR ;


 int ERROR_ALREADY_EXISTS ;
 int ERROR_SUCCESS ;
 int MAX_PATH ;
 scalar_t__* PathFindFileNameW (int *) ;
 int PathIsDirectoryW (int *) ;
 int SHCreateDirectoryExW (int *,int *,int *) ;
 int WINE_ERR (char*,int ) ;
 int strcpyW (int *,int ) ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static void create_target_directory(LPWSTR Target)
{
    WCHAR dir[MAX_PATH];
    int res;

    strcpyW(dir, Target);
    *PathFindFileNameW(dir) = 0;
    if(!PathIsDirectoryW(dir))
    {
        res = SHCreateDirectoryExW(((void*)0), dir, ((void*)0));
        if(res != ERROR_SUCCESS && res != ERROR_ALREADY_EXISTS)
            WINE_ERR("Can't create directory: %s\n", wine_dbgstr_w(dir));
    }
}
