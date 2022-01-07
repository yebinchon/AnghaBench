
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int PEKIND ;
typedef int LPWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int ARRAY_SIZE (char const*) ;
 int FALSE ;
 int GetWindowsDirectoryW (int,int) ;
 int TRUE ;
 int WARN (char*,int) ;
 int lstrcpyW (int,char const*) ;




 int strcmp (char const*,char*) ;

__attribute__((used)) static BOOL get_assembly_directory(LPWSTR dir, DWORD size, const char *version, PEKIND architecture)
{
    static const WCHAR dotnet[] = {'\\','M','i','c','r','o','s','o','f','t','.','N','E','T','\\',0};
    static const WCHAR gac[] = {'\\','a','s','s','e','m','b','l','y','\\','G','A','C',0};
    static const WCHAR msil[] = {'_','M','S','I','L',0};
    static const WCHAR x86[] = {'_','3','2',0};
    static const WCHAR amd64[] = {'_','6','4',0};
    DWORD len = GetWindowsDirectoryW(dir, size);

    if (!strcmp(version, "v4.0.30319"))
    {
        lstrcpyW(dir + len, dotnet);
        len += ARRAY_SIZE(dotnet) - 1;
        lstrcpyW(dir + len, gac + 1);
        len += ARRAY_SIZE(gac) - 2;
    }
    else
    {
        lstrcpyW(dir + len, gac);
        len += ARRAY_SIZE(gac) - 1;
    }
    switch (architecture)
    {
        case 128:
            break;

        case 129:
            lstrcpyW(dir + len, msil);
            break;

        case 130:
            lstrcpyW(dir + len, x86);
            break;

        case 131:
            lstrcpyW(dir + len, amd64);
            break;

        default:
            WARN("unhandled architecture %u\n", architecture);
            return FALSE;
    }
    return TRUE;
}
