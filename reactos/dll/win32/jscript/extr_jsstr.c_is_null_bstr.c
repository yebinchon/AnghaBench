
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsstr_t ;
typedef int BOOL ;


 int * null_bstr_str ;

BOOL is_null_bstr(jsstr_t *str)
{
    return str == null_bstr_str;
}
