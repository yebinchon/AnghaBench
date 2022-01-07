
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LPWSTR ;
typedef int BOOL ;


 int ARRAY_SIZE (char*) ;
 int FALSE ;
 int GetTempFileNameW (char*,char const*,int ,int ) ;
 int GetTempPathW (int ,char*) ;
 int MAX_PATH ;
 int TRUE ;

__attribute__((used)) static BOOL get_temp_ini_path(LPWSTR name)
{
    static const WCHAR prefix[] = {'a','v','p',0};
    WCHAR tmp_dir[MAX_PATH];

    if(!GetTempPathW(ARRAY_SIZE(tmp_dir), tmp_dir))
       return FALSE;

    if(!GetTempFileNameW(tmp_dir, prefix, 0, name))
        return FALSE;
    return TRUE;
}
