
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int* LPWSTR ;
typedef int INT ;


 int ARRAYSIZE (char*) ;
 scalar_t__ AddConsoleAliasW (int*,int*,int ) ;
 int GetModuleHandle (int *) ;
 int IDS_INVALID_MACRO_DEF ;
 int LoadStringW (int ,int ,char*,int ) ;
 int pszExeName ;
 char* szStringBuf ;
 int* wcschr (int*,int) ;
 int wprintf (char*,int*) ;

__attribute__((used)) static INT SetMacro(LPWSTR definition)
{
    WCHAR *name, *nameend, *text, temp;

    name = definition;
    while (*name == L' ')
        name++;


    if ((nameend = wcschr(name, L'=')) != ((void*)0))
    {
        text = nameend + 1;
        while (*text == L' ')
            text++;

        while (nameend > name && nameend[-1] == L' ')
            nameend--;


        temp = *nameend;
        *nameend = L'\0';

        if (!wcschr(name, L' ') && AddConsoleAliasW(name, text, pszExeName))
            return 0;
        *nameend = temp;
    }

    LoadStringW(GetModuleHandle(((void*)0)),
                IDS_INVALID_MACRO_DEF,
                szStringBuf,
                ARRAYSIZE(szStringBuf));
    wprintf(szStringBuf, definition);
    return 1;
}
