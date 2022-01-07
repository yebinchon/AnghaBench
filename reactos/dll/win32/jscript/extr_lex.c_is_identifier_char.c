
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 scalar_t__ iswalnum (char) ;

BOOL is_identifier_char(WCHAR c)
{
    return iswalnum(c) || c == '$' || c == '_' || c == '\\';
}
