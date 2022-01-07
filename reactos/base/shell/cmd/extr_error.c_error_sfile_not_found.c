
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int TCHAR ;
typedef int LPTSTR ;


 int ARRAYSIZE (int *) ;
 int CMD_ModuleHandle ;
 int ConErrPrintf (int ,int *,int ) ;
 int LoadString (int ,int ,int *,int ) ;
 int RC_STRING_MAX_SIZE ;
 int STRING_ERROR_FILE_NOT_FOUND ;
 int _T (char*) ;
 int nErrorLevel ;

VOID error_sfile_not_found (LPTSTR f)
{
    TCHAR szMsg[RC_STRING_MAX_SIZE];

    LoadString(CMD_ModuleHandle, STRING_ERROR_FILE_NOT_FOUND, szMsg, ARRAYSIZE(szMsg));
    ConErrPrintf(_T("%s - %s\n"), szMsg, f);
    nErrorLevel = 1;
}
