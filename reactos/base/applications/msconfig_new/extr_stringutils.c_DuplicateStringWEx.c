
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int* LPWSTR ;
typedef int LPCWSTR ;


 scalar_t__ MemAlloc (int ,size_t) ;
 int StringCchCopyNW (int*,size_t,int ,size_t) ;
 size_t min (int ,size_t) ;
 int wcslen (int ) ;

LPWSTR DuplicateStringWEx(LPCWSTR str, size_t numOfChars)
{
    LPWSTR dupStr;
    size_t strSize;

    if (!str) return ((void*)0);

    strSize = min(wcslen(str), numOfChars);

    dupStr = (LPWSTR)MemAlloc(0, (strSize + 1) * sizeof(WCHAR));
    if (!dupStr) return ((void*)0);

    StringCchCopyNW(dupStr, strSize + 1, str, strSize);
    dupStr[strSize] = L'\0';

    return dupStr;
}
