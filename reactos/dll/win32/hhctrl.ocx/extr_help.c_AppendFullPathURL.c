
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LPWSTR ;
typedef char* LPCWSTR ;
typedef int BOOL ;


 int ARRAY_SIZE (char*) ;
 int FALSE ;
 int GetFullPathNameW (char*,int ,char*,int *) ;
 int GetLastError () ;
 int MAX_PATH ;
 int TRACE (char*,int ,int ,int ) ;
 int TRUE ;
 int WARN (char*,int ) ;
 int debugstr_w (char*) ;
 int wsprintfW (int ,char const*,char*,char const*,char*) ;

__attribute__((used)) static BOOL AppendFullPathURL(LPCWSTR file, LPWSTR buf, LPCWSTR index)
{
    static const WCHAR url_format[] =
        {'m','k',':','@','M','S','I','T','S','t','o','r','e',':','%','s',':',':','%','s','%','s',0};
    static const WCHAR slash[] = {'/',0};
    static const WCHAR empty[] = {0};
    WCHAR full_path[MAX_PATH];

    TRACE("%s %p %s\n", debugstr_w(file), buf, debugstr_w(index));

    if (!GetFullPathNameW(file, ARRAY_SIZE(full_path), full_path, ((void*)0))) {
        WARN("GetFullPathName failed: %u\n", GetLastError());
        return FALSE;
    }

    wsprintfW(buf, url_format, full_path, (!index || index[0] == '/') ? empty : slash, index);
    return TRUE;
}
