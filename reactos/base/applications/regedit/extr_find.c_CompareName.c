
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int BOOL ;


 int RSF_MATCHCASE ;
 int RSF_WHOLESTRING ;
 scalar_t__ _wcsicmp (int ,int ) ;
 int * lstrstri (int ,int ) ;
 int s_dwFlags ;
 scalar_t__ wcscmp (int ,int ) ;
 int * wcsstr (int ,int ) ;

__attribute__((used)) static BOOL CompareName(LPCWSTR pszName1, LPCWSTR pszName2)
{
    if (s_dwFlags & RSF_WHOLESTRING)
    {
        if (s_dwFlags & RSF_MATCHCASE)
            return wcscmp(pszName1, pszName2) == 0;
        else
            return _wcsicmp(pszName1, pszName2) == 0;
    }
    else
    {
        if (s_dwFlags & RSF_MATCHCASE)
            return wcsstr(pszName1, pszName2) != ((void*)0);
        else
            return lstrstri(pszName1, pszName2) != ((void*)0);
    }
}
