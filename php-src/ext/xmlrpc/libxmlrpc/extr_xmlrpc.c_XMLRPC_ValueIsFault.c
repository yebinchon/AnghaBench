
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XMLRPC_VALUE ;


 scalar_t__ XMLRPC_VectorGetValueWithID (int ,char*) ;

int XMLRPC_ValueIsFault (XMLRPC_VALUE value) {
   if( XMLRPC_VectorGetValueWithID(value, "faultCode") &&
       XMLRPC_VectorGetValueWithID(value, "faultString") ) {
      return 1;
   }
   return 0;
}
