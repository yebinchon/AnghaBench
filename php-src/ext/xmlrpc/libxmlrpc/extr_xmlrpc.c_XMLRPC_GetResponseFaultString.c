
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XMLRPC_REQUEST ;


 char const* XMLRPC_GetValueFaultString (int ) ;
 int XMLRPC_RequestGetData (int ) ;

const char* XMLRPC_GetResponseFaultString (XMLRPC_REQUEST response) {
   return XMLRPC_GetValueFaultString( XMLRPC_RequestGetData(response) );
}
