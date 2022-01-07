
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPTSTR ;


 int ConErrResPrintf (int ,int ) ;
 int STRING_ERROR_TOO_MANY_PARAMETERS ;
 int nErrorLevel ;

VOID error_too_many_parameters (LPTSTR s)
{
    ConErrResPrintf(STRING_ERROR_TOO_MANY_PARAMETERS, s);
    nErrorLevel = 1;
}
