
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t XMLRPC_VECTOR_TYPE ;
typedef size_t XMLRPC_VALUE_TYPE ;


 size_t XMLRPC_TYPE_COUNT ;
 char** get_type_str_mapping () ;
 size_t xmlrpc_vector_none ;

const char* xmlrpc_type_as_str(XMLRPC_VALUE_TYPE type, XMLRPC_VECTOR_TYPE vtype)
{
 const char** str_mapping = get_type_str_mapping();

 if (vtype == xmlrpc_vector_none) {
  return str_mapping[type];
 } else {
  return str_mapping[XMLRPC_TYPE_COUNT + vtype];
 }
}
