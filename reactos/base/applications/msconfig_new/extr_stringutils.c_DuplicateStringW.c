
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;


 scalar_t__ MemAlloc (int ,size_t) ;
 int StringCchCopyW (int *,size_t,int ) ;
 int wcslen (int ) ;

LPWSTR DuplicateStringW(LPCWSTR str)
{
    LPWSTR dupStr;
    size_t strSizePlusNull;

    if (!str) return ((void*)0);

    strSizePlusNull = wcslen(str) + 1;

    dupStr = (LPWSTR)MemAlloc(0, strSizePlusNull * sizeof(WCHAR));
    if (!dupStr) return ((void*)0);

    StringCchCopyW(dupStr, strSizePlusNull, str);

    return dupStr;
}
