
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XMLRPC_VALUE ;


 char const* XMLRPC_VectorGetStringWithID (int ,char*) ;

const char* XMLRPC_GetValueFaultString (XMLRPC_VALUE value) {
   return XMLRPC_VectorGetStringWithID(value, "faultString");
}
