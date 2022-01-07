
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int * LPWSTR ;
typedef int EXTENDED_NAME_FORMAT ;


 int CharLowerW (int *) ;
 int GetProcessHeap () ;
 scalar_t__ GetUserNameExW (int ,int *,int *) ;
 int HEAP_ZERO_MEMORY ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 int MAX_PATH ;

LPWSTR WhoamiGetUser(EXTENDED_NAME_FORMAT NameFormat)
{
    LPWSTR UsrBuf = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, MAX_PATH);
    ULONG UsrSiz = MAX_PATH;

    if (UsrBuf == ((void*)0))
        return ((void*)0);

    if (GetUserNameExW(NameFormat, UsrBuf, &UsrSiz))
    {
        CharLowerW(UsrBuf);
        return UsrBuf;
    }

    HeapFree(GetProcessHeap(), 0, UsrBuf);
    return ((void*)0);
}
