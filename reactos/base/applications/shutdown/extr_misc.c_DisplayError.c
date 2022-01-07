
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int DWORD ;


 int ConMsgPuts (int ,int ,int *,int ,int ) ;
 int ConPrintf (int ,char*,int ) ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int LANG_USER_DEFAULT ;
 int StdErr ;

VOID DisplayError(DWORD dwError)
{
    ConMsgPuts(StdErr, FORMAT_MESSAGE_FROM_SYSTEM,
               ((void*)0), dwError, LANG_USER_DEFAULT);
    ConPrintf(StdErr, L"Error code: %lu\n", dwError);
}
