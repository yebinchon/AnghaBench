
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int const lstrlenW (char*) ;

__attribute__((used)) static BOOL is_full_path(LPCWSTR path)
{
    const int MIN_PATH_LEN = 3;

    if (!path || lstrlenW(path) < MIN_PATH_LEN)
        return FALSE;

    if ((path[1] == ':' && path[2] == '\\') || (path[0] == '\\' && path[1] == '\\'))
        return TRUE;

    return FALSE;
}
