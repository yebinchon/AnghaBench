
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* LPWSTR ;
typedef int * LPCWSTR ;
typedef int INFCONTEXT ;
typedef int * HINF ;
typedef int DWORD ;


 int FALSE ;
 int FIXME (char*) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int MAX_FIELD_LENGTH ;
 int MAX_PATH ;
 int SetupFindFirstLineW (int *,char*,int *,int *) ;
 scalar_t__ SetupFindNextLine (int *,int *) ;
 int SetupGetLineTextW (int *,int *,int *,char const*,char*,int,int*) ;
 int SetupGetStringFieldW (int *,int ,char*,int,int*) ;
 int SetupSetDirectoryIdW (int *,int,char*) ;
 int get_dest_dir (int *,char*,char*,int) ;
 char* get_parameter (char**,char,int ) ;
 int lstrcmpiW (char*,char const*) ;
 int lstrcpynW (char*,int *,int) ;
 char* wcschr (char*,char) ;
 int wcstol (char*,int *,int) ;

void set_ldids(HINF hInf, LPCWSTR pszInstallSection, LPCWSTR pszWorkingDir)
{
    WCHAR field[MAX_FIELD_LENGTH];
    WCHAR line[MAX_FIELD_LENGTH];
    WCHAR dest[MAX_PATH];
    INFCONTEXT context;
    DWORD size;
    int ldid;

    static const WCHAR source_dir[] = {'S','o','u','r','c','e','D','i','r',0};

    static const WCHAR custDestW[] = {
        'C','u','s','t','o','m','D','e','s','t','i','n','a','t','i','o','n',0
    };

    if (!SetupGetLineTextW(((void*)0), hInf, pszInstallSection, custDestW,
                           field, MAX_FIELD_LENGTH, &size))
        return;

    if (!SetupFindFirstLineW(hInf, field, ((void*)0), &context))
        return;

    do
    {
        LPWSTR value, ptr, key, key_copy = ((void*)0);
        DWORD flags = 0;

        SetupGetLineTextW(&context, ((void*)0), ((void*)0), ((void*)0),
                          line, MAX_FIELD_LENGTH, &size);




        if (!(value = wcschr(line, '=')))
        {
            SetupGetStringFieldW(&context, 0, ((void*)0), 0, &size);
            key = HeapAlloc(GetProcessHeap(), 0, size * sizeof(WCHAR));
            key_copy = key;
            SetupGetStringFieldW(&context, 0, key, size, &size);
            value = line;
        }
        else
        {
            key = line;
            *(value++) = '\0';
        }


        while (*value == ' ')
            value++;


        ptr = wcschr(value, ',');
        if (ptr) {
            *ptr = '\0';
            flags = wcstol(ptr+1, ((void*)0), 10);
        }


        if (pszWorkingDir && !lstrcmpiW(value, source_dir))
            lstrcpynW(dest, pszWorkingDir, MAX_PATH);
        else
            get_dest_dir(hInf, value, dest, MAX_PATH);


        if (flags & 0x04)
            FIXME("Need to support changing paths - default will be used\n");


        while ((ptr = get_parameter(&key, ',', FALSE)))
        {
            ldid = wcstol(ptr, ((void*)0), 10);
            SetupSetDirectoryIdW(hInf, ldid, dest);
        }
        HeapFree(GetProcessHeap(), 0, key_copy);
    } while (SetupFindNextLine(&context, &context));
}
