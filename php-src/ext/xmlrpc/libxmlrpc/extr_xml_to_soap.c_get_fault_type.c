
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XMLRPC_VALUE ;


 int TOKEN_SOAP_FAULTCODE ;
 int TOKEN_SOAP_FAULTSTRING ;
 int TOKEN_XMLRPC_FAULTCODE ;
 int TOKEN_XMLRPC_FAULTSTRING ;
 scalar_t__ XMLRPC_VectorGetValueWithID (int ,int ) ;

__attribute__((used)) static inline int get_fault_type(XMLRPC_VALUE node) {
 if (XMLRPC_VectorGetValueWithID(node, TOKEN_XMLRPC_FAULTCODE) &&
   XMLRPC_VectorGetValueWithID(node, TOKEN_XMLRPC_FAULTSTRING)) {
  return 1;
 }
 else if (XMLRPC_VectorGetValueWithID(node, TOKEN_SOAP_FAULTCODE) &&
    XMLRPC_VectorGetValueWithID(node, TOKEN_SOAP_FAULTSTRING)) {
  return 2;
 }
 return 0;
}
