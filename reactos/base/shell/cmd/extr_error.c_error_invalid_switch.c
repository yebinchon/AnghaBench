
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int TCHAR ;


 int ConErrResPrintf (int ,int ) ;
 int STRING_ERROR_INVALID_SWITCH ;
 int nErrorLevel ;

VOID error_invalid_switch (TCHAR ch)
{
    ConErrResPrintf(STRING_ERROR_INVALID_SWITCH, ch);
    nErrorLevel = 1;
}
