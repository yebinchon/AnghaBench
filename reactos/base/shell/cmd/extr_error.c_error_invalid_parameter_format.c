
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPTSTR ;


 int ConErrResPrintf (int ,int ) ;
 int STRING_ERROR_INVALID_PARAM_FORMAT ;
 int nErrorLevel ;

VOID error_invalid_parameter_format (LPTSTR s)
{
    ConErrResPrintf(STRING_ERROR_INVALID_PARAM_FORMAT, s);
    nErrorLevel = 1;
}
