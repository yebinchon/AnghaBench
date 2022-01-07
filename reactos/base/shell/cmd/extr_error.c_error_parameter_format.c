
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int TCHAR ;


 int ConErrResPrintf (int ,int ) ;
 int STRING_ERROR_PARAMETERF_ERROR ;
 int nErrorLevel ;

VOID error_parameter_format(TCHAR ch)
{
    ConErrResPrintf(STRING_ERROR_PARAMETERF_ERROR, ch);
    nErrorLevel = 1;
}
