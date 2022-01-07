
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsstr_t ;


 int empty_str ;
 int * jsstr_addref (int ) ;

jsstr_t *jsstr_empty(void)
{
    return jsstr_addref(empty_str);
}
