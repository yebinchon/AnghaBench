
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum php_http_method { ____Placeholder_php_http_method } php_http_method ;


 char const** method_strings ;

const char * php_http_method_str (enum php_http_method m)
{
  return method_strings[m];
}
