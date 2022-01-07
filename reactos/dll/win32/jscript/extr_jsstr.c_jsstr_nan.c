
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsstr_t ;


 int * jsstr_addref (int ) ;
 int nan_str ;

jsstr_t *jsstr_nan(void)
{
    return jsstr_addref(nan_str);
}
