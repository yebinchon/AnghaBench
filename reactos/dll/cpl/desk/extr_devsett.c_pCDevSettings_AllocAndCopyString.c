
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int TCHAR ;
typedef int SIZE_T ;
typedef int * PWSTR ;


 int CP_ACP ;
 int LMEM_FIXED ;
 scalar_t__ LocalAlloc (int ,int) ;
 int MultiByteToWideChar (int ,int ,int const*,int,int *,int) ;
 int StringCbCopyW (int *,int,int const*) ;
 int _tcslen (int const*) ;

__attribute__((used)) static PWSTR
pCDevSettings_AllocAndCopyString(const TCHAR *pszSrc)
{
    SIZE_T c;
    PWSTR str;

    c = _tcslen(pszSrc) + 1;
    str = (PWSTR)LocalAlloc(LMEM_FIXED,
                            c * sizeof(WCHAR));
    if (str != ((void*)0))
    {




        MultiByteToWideChar(CP_ACP,
                            0,
                            pszSrc,
                            -1,
                            str,
                            c);

    }

    return str;
}
