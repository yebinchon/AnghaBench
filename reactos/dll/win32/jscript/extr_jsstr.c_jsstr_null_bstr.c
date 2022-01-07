
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsstr_t ;


 int * jsstr_addref (int ) ;
 int null_bstr_str ;

jsstr_t *jsstr_null_bstr(void)
{
    return jsstr_addref(null_bstr_str);
}
