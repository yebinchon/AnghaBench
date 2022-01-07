
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTR ;
typedef int LPCSTR ;
typedef int CHAR ;


 scalar_t__ MemAlloc (int ,size_t) ;
 int StringCchCopyA (int *,size_t,int ) ;
 int strlen (int ) ;

LPSTR DuplicateStringA(LPCSTR str)
{
    LPSTR dupStr;
    size_t strSizePlusNull;

    if (!str) return ((void*)0);

    strSizePlusNull = strlen(str) + 1;

    dupStr = (LPSTR)MemAlloc(0, strSizePlusNull * sizeof(CHAR));
    if (!dupStr) return ((void*)0);

    StringCchCopyA(dupStr, strSizePlusNull, str);

    return dupStr;
}
