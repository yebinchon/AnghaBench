
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XMLRPC_REQUEST ;


 int XMLRPC_GetValueFaultCode (int ) ;
 int XMLRPC_RequestGetData (int ) ;

int XMLRPC_GetResponseFaultCode(XMLRPC_REQUEST response) {
   return XMLRPC_GetValueFaultCode( XMLRPC_RequestGetData(response) );
}
