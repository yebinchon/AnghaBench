
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCWSTR ;
typedef int BOOL ;


 scalar_t__ PathIsURLW (scalar_t__) ;
 scalar_t__ wcsstr (scalar_t__,char*) ;

BOOL IsInternetLocation(LPCWSTR pszLocation)
{
    return (PathIsURLW(pszLocation) || wcsstr(pszLocation, L"www.") == pszLocation);
}
