
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XMLRPC_VALUE ;


 int XMLRPC_VectorGetIntWithID (int ,char*) ;

int XMLRPC_GetValueFaultCode (XMLRPC_VALUE value) {
   return XMLRPC_VectorGetIntWithID(value, "faultCode");
}
