
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPWSTR ;
typedef int DWORD ;


 int ConMsgPuts (int ,int ,int *,int ,int ) ;
 int ConPrintf (int ,char*,int ) ;
 int ConPuts (int ,char*) ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int LANG_USER_DEFAULT ;
 int StdErr ;

__attribute__((used)) static VOID PrintWin32Error(LPWSTR Message, DWORD ErrorCode)
{
    ConPrintf(StdErr, L"%s: ", Message);
    ConMsgPuts(StdErr, FORMAT_MESSAGE_FROM_SYSTEM,
               ((void*)0), ErrorCode, LANG_USER_DEFAULT);
    ConPuts(StdErr, L"\n");
}
