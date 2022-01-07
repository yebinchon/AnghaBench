
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPTSTR ;
typedef int INT ;


 int CP_BLANK_NOT_FOUND ;
 int CP_END_OF_STRING ;
 int CP_OK ;
 scalar_t__ _T (char) ;
 scalar_t__ _istspace (scalar_t__) ;
 scalar_t__* _tcschr (scalar_t__*,scalar_t__) ;

__attribute__((used)) static
INT chop_blank(LPTSTR *arg_str)
{
    LPTSTR str;
    str = _tcschr(*arg_str,_T(' '));
    if (!str)
    {
        str = _tcschr (*arg_str, _T('\0'));
        if (str != ((void*)0))
            *arg_str=str;
        return CP_BLANK_NOT_FOUND;
    }

    while(_istspace(*str))
        str++;

    if (*str == _T('\0'))
    {
        *arg_str=str;
        return CP_END_OF_STRING;
    }

    *arg_str = str;

    return CP_OK;
}
