
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 scalar_t__ iswalpha (char) ;

__attribute__((used)) static BOOL is_identifier_first_char(WCHAR c)
{
    return iswalpha(c) || c == '$' || c == '_' || c == '\\';
}
