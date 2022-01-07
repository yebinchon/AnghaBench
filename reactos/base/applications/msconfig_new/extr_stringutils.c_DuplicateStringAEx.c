
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;
typedef int LPCSTR ;
typedef int CHAR ;


 scalar_t__ MemAlloc (int ,size_t) ;
 int StringCchCopyNA (char*,size_t,int ,size_t) ;
 size_t min (int ,size_t) ;
 int strlen (int ) ;

LPSTR DuplicateStringAEx(LPCSTR str, size_t numOfChars)
{
    LPSTR dupStr;
    size_t strSize;

    if (!str) return ((void*)0);

    strSize = min(strlen(str), numOfChars);

    dupStr = (LPSTR)MemAlloc(0, (strSize + 1) * sizeof(CHAR));
    if (!dupStr) return ((void*)0);

    StringCchCopyNA(dupStr, strSize + 1, str, strSize);
    dupStr[strSize] = '\0';

    return dupStr;
}
