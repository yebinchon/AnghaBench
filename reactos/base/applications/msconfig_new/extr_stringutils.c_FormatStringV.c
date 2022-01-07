
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int TCHAR ;
typedef int * LPTSTR ;
typedef int LPCTSTR ;


 scalar_t__ MemAlloc (int ,size_t) ;
 int StringCchVPrintf (int *,size_t,int ,int ) ;
 int _vsctprintf (int ,int ) ;

LPTSTR FormatStringV(LPCTSTR str, va_list args)
{
    LPTSTR lpszString;
    size_t strLenPlusNull;

    if (!str) return ((void*)0);

    strLenPlusNull = _vsctprintf(str, args) + 1;

    lpszString = (LPTSTR)MemAlloc(0, strLenPlusNull * sizeof(TCHAR));
    if (!lpszString) return ((void*)0);

    StringCchVPrintf(lpszString, strLenPlusNull, str, args);

    return lpszString;
}
