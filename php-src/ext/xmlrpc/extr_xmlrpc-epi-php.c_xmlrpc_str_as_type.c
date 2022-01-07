
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XMLRPC_VALUE_TYPE ;


 int XMLRPC_TYPE_COUNT ;
 char** get_type_str_mapping () ;
 int strcmp (char const*,char const*) ;
 int xmlrpc_none ;

XMLRPC_VALUE_TYPE xmlrpc_str_as_type(const char* str)
{
 const char** str_mapping = get_type_str_mapping();
 int i;

 if (str) {
  for (i = 0; i < XMLRPC_TYPE_COUNT; i++) {
   if (!strcmp(str_mapping[i], str)) {
    return (XMLRPC_VALUE_TYPE) i;
   }
  }
 }
 return xmlrpc_none;
}
