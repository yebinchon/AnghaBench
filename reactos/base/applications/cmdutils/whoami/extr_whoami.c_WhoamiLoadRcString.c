
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int INT ;


 int GetModuleHandleW (int *) ;
 int LoadStringW (int ,int ,int *,int) ;
 int RC_STRING_MAX_SIZE ;

LPWSTR WhoamiLoadRcString(INT ResId)
{

    static WCHAR TmpBuffer[850];

    LoadStringW(GetModuleHandleW(((void*)0)), ResId, TmpBuffer, 850);

    return TmpBuffer;
}
