
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int TCHAR ;
typedef int LPTSTR ;


 int ARRAYSIZE (int *) ;
 int CMD_ModuleHandle ;
 int ConErrPrintf (int ,int *,...) ;
 int LoadString (int ,int ,int *,int ) ;
 int RC_STRING_MAX_SIZE ;
 int STRING_ERROR_ERROR2 ;
 int _T (char*) ;
 int nErrorLevel ;

VOID error_syntax (LPTSTR s)
{
    TCHAR szMsg[RC_STRING_MAX_SIZE];

    LoadString(CMD_ModuleHandle, STRING_ERROR_ERROR2, szMsg, ARRAYSIZE(szMsg));

    if (s)
        ConErrPrintf(_T("%s - %s\n"), szMsg, s);
    else
        ConErrPrintf(_T("%s.\n"), szMsg);

    nErrorLevel = 1;
}
