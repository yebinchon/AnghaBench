
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XMLRPC_VECTOR_TYPE ;


 int TYPE_STR_MAP_SIZE ;
 int XMLRPC_TYPE_COUNT ;
 char** get_type_str_mapping () ;
 int strcmp (char const*,char const*) ;
 int xmlrpc_vector_none ;

XMLRPC_VECTOR_TYPE xmlrpc_str_as_vector_type(const char* str)
{
 const char** str_mapping = get_type_str_mapping();
 int i;

 if (str) {
  for (i = XMLRPC_TYPE_COUNT; i < TYPE_STR_MAP_SIZE; i++) {
   if (!strcmp(str_mapping[i], str)) {
    return (XMLRPC_VECTOR_TYPE) (i - XMLRPC_TYPE_COUNT);
   }
  }
 }
 return xmlrpc_vector_none;
}
